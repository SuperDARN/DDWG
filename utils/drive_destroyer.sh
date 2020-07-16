#!/bin/bash
# Copyright 2020 SuperDARN Canada
# drive_destroyer.sh
# Author: Kevin Krieger
#
# Run this script with appropriate locations for the following:
# 1) COPY_DIRECTORY - Where should the files be copied?
# 2) LOGFILE - Where to place a persistent log file?
# 3) MISSING_LIST - A text file with one filename missing per line
# 4) REQUIRED_LIST - A text file with what disks are required (disk label retrieved from
# udisksctl )
#
# Then shove SuperDARN data disks in your disk drive to automatically
# grab files that are missing. When the disk is ejected, move on to the next disk.
# There are several different beep codes to make it easier.
# 
# Dependencies: udisks2, a working disk drive (usually /dev/sr0)
# You'll also need a text file with a list of missing files and a text file with a list
# of the labels of required disks.
#
# The script will eject any disk it has previously seen without copying anything from it
# a second time
#
# Note that if your system has the 'udisks' command line command available, you can use that
# instead of 'isoinfo' or 'udisksctl'

DISK_DEVICE=/dev/sr0
# Where should the data be copied to? Make sure there's plenty of space on this partition
COPY_DIRECTORY=/location/to/copy/to/
LOGFILE=/location/of/log.txt
# Two text files, one containing missing dat files (one per line) and another containing
# a list of disk labels, one per line, to get data for.
MISSING_LIST=/location/of/missing_dat.txt
REQUIRED_LIST=/location/of/disks_to_get.txt

beep() {
	# Play a beep at frequency $1 Hz that lasts $2 tenths of a second long.
	# See https://unix.stackexchange.com/questions/1974/how-do-i-make-my-pc-speaker-beep
	( \speaker-test --frequency "$1" --test sine )&
	pid=$!
	\sleep 0."${2}"
	\kill -9 $pid 
} > /dev/null 2>&1

alarm() {
	beep 800 200
	beep 800 200
	beep 800 200
	beep 800 200
	beep 800 200
	beep 800 200
} > /dev/null 2>&1

disk_done_beep() {
	beep 1000 300
} > /dev/null 2>&1

# Loop forever checking to see if we have a disk
while true
do
    sleep 1
    # Uncomment the following two lines if you have udisks available
    #DISK_INSERTED=$(udisks --show-info ${DISK_DEVICE} | grep "has media" | awk -F' ' '{print $3}')
    #if [[ -z "${DISK_INSERTED// }" ]]
    DISK_INSERTED=$(isoinfo -i ${DISK_DEVICE} -d > /dev/null 2>&1)
    if [[ $? -eq 0 ]]
    then
        :   
    else
        totalFiles=0
        datetime=$(date +%Y%M%d.%H%m.%S)
        timestart=$(date +%s)
        echo "DISK INSERTED ${datetime}" >> ${LOGFILE} 2>&1
        # Uncomment the following line if you have udisks available
        #LABEL=$(udisks --show-info ${DISK_DEVICE} | grep "label" | awk -F' ' '{print $2}')
        LABEL=$(isoinfo -i /dev/sr0 -d | grep "Volume id" | awk -F' ' '{print $3}')

	if grep -q "${LABEL}" ${LOGFILE}
        then
            echo "Disk already inserted, moving on" >> ${LOGFILE} 2>&1
            eject ${DISK_DEVICE}
            continue
        fi
        if grep -q "${LABEL}" ${REQUIRED_LIST} 
        then
            sleep 3
            # Uncomment the following if you have udisks available
            #MOUNT_POINT=$(udisks --mount ${DISK_DEVICE} |awk -F' ' '{print $4}')
            MOUNT_POINT=$(udisksctl mount -b ${DISK_DEVICE} |awk -F' ' '{print $4}' | rev | cut -c2- | rev)
      ret_val=$?
      if [[ $ret_val -ne 0 ]]
      then
        echo "Failure to mount disk ${LABEL} in ${DISK_DEVICE}. Please try again"
        alarm
        eject ${DISK_DEVICE}
        break
      fi
            FILES=$(ls -1 "${MOUNT_POINT}")
            echo "Label: ${LABEL}" >> ${LOGFILE} 2>&1
            for f in ${FILES}
            do 
    f_basename="${f%.*}"
    grep -Fq "$f_basename" "${MISSING_LIST}"
    ret_val=$?
                if [ $ret_val -eq 0 ]
                then
                    cp -vp "${MOUNT_POINT}"/"${f}" "${COPY_DIRECTORY}" >> ${LOGFILE} 2>&1
                    totalFiles=$((totalFiles + 1))
                else       
                    : 
                fi
            done
            datetime=$(date +%Y%M%d.%H%m.%S)
            timeend=$(date +%s)
            disktime=$((timeend - timestart))
    if [[ ${totalFiles} -eq 0 ]]
      then
        echo "Didn't get any files from ${LABEL}. Please try again"
        alarm
        eject ${DISK_DEVICE}
        break
      fi
            echo "${totalFiles} files copied in ${disktime} seconds" >> ${LOGFILE} 2>&1
            sleep 3
            # Uncomment the following if you have udisks available
            #udisks --unmount ${DISK_DEVICE}
            udisksctl unmount -b ${DISK_DEVICE}
      ret_val=$?
      if [[ $ret_val -ne 0 ]]
      then
        echo "Failed to unmount, please do so manually by ejecting disk and restart this script"
        alarm
        exit
      fi
      eject ${DISK_DEVICE}
      disk_done_beep
        else
            echo "Disk ${LABEL} not required, moving on" >> ${LOGFILE} 2>&1
            eject ${DISK_DEVICE}
            continue
        fi
    fi
done
