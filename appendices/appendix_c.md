# Appendix D - USASK Data Distribution

## Historical overview

The Data Distribution system at the University of Saskatchewan has undergone many changes over the
lifetime of the SuperDARN project. Prior to hard drives being shipped to institutions, other forms
of media were written and shipped out. After hard drives were no longer used, the internet was
utilized along with NAS storage provided by Westgrid. After that, a scaled-up version of the NAS
system was put in place using Globus and storage provided by Compute Canada.

### Hard drive distribution

Prior to October 1st, 2013, JHU/APL (Robin Barnes/Stu Nylund) downloaded newly posted data from 
approximately 16 institutions nightly. This data was then processed through their scripts before 
they were eventually posted to the University of Saskatchewan's sdcopy server. Once four months 
worth of data (January to April, May to August, or September to December) are uploaded to sdcopy 
by JHU/APL, the data manager would write 17 hard-drives with copies of the four months worth of 
data. The hard drives were then shipped out to 16 institutions and one would be kept at the 
University of Saskatchewan for an extra backup.

In preparation for a distribution of data, the data manager at the UofS prepares 17 external 
hard drives by formatting them with an ext3 filesystem, partitioning them, and creating several 
directories for rawacf and fitacf data files to go. Fitacf files would be placed on the hard drive 
for radars that could not reliably transfer rawacf files.

After four months worth of data has been transferred to sdcopy by JHU/APL, the data is copied to 
six hard drives at a time (presently using USB external hard drives). This takes about two work 
days. After the data is copied to the six connected hard drives, the data on the hard drives is 
read and checked for consistency with the original data on sdcopy. This “diffing” takes roughly 
another work day.

Alongside the preparation of the hard drives, gap resolution would be done. The data manager 
would run a script on all the files, for all the radars over the past four month period. The 
output of the script is in the format:
20120318.14.rkn  --  20120318.22.rkn
20120319.00.rkn  --  20120319.14.rkn
20120321.16.rkn  --

This format means that there are no rawacf data files during the time period March 18th, at 
14:00 UTC to March 19th at 14:00 UTC. Then there are data files for March 19th 16:00 UTC until 
March 21st at 14:00 UTC. And there are no data files for March 21st at 16:00 UTC.

Emails are sent out to the individuals responsible for each radar, and they respond with 
information regarding the gaps, if they are real or not. If the gaps are not real, then they 
provide the data files to be included in the next distribution of hard drives. 

### NAS distribution via superdarn-cssdp.usask.ca

The SuperDARN Primary Data Mirror was implemented using WestGrid storage space. WestGrid is part 
of a consortium of High Performance Computing (HPC) resources available to academic researchers. 
The WestGrid storage space was accessed on a desktop computer running Linux in the SuperDARN 
Canada computer room, and was mounted as a Networked File System (NFS). In order to ensure 
adequate security, the protocol used was the Secure File Transfer Protocol (sftp), and it ran in a 
segregated environment on the Linux computer. The segregation allowed the users of the SuperDARN 
Primary Data Mirror read-only access to the data, and only the directories that contain the data. 
In this way, the rest of the file system was inaccessible to users.

![structure](../img/cssdp_dir_structure.png)

The above image shows a view of the directory structure of the old SuperDARN data mirror.

A short description of the directory structure:
* `/sddata` – This is the root of the mirror.
* `/sddata/master.hashes` – This file is updated daily and contains a line for every `YYYYMM.hashes`
file on the mirror. It is useful for determining what months have new or changed data, as the 
hash for that specific hashes file will change. An example usage of this is to keep a local 
copy of this master.hashes file, and periodically compare your local copy with the server's 
copy to see what months you need to synchronize with.
* `/sddata/raw` – This is the directory for 'raw' data (currently, only 'rawacf' files).
* `/sddata/raw/2010` – Directory for 'raw' 2010 data.
* `/sddata/raw/2010/04` – Directory for 'raw' April 2010 data.
* `/sddata/raw/2010/04/201004.hashes` – An up-to-date list of all the hashes for files in the 
`/sddata/raw/2010/04/` directory. It is used by the example synchronization script sent out 
previously, as well as the gatekeeper to the mirror. Every time a new or updated file is placed 
in the `/sddata/raw/2010/04/` directory, it will be updated. It is not sorted.


## Current Distribution

The current system utilizes [Globus](<https://www.globus.org/>), which is a system for research data
management. At a very high level, it allows fast, parallel transfers of large data sets between 
`endpoints`. An endpoint can be a server in the cloud or your personal laptop or desktop. 

At SuperDARN Canada, we have access to the Globus endpoint on `cedar.computecanada.ca`, which has 
the Globus server software installed and acts as an endpoint. We are able to share subdirectories of
this storage with groups of users. In this way, we can customize the user's access to various data.
Currently, we use this sharing ability with a group of users to allow read-only access to the main
RAWACF and DAT file distribution. Alongside the main distribution, we expose the directory 
containing files removed from the distribution for any reason (blacklisted, failed in some way, etc).

A user wishing to have access to this data should contact the DDWG.

### Data flow into USASK holding directories

In general, RAWACF data flows into the USASK server *superdarn-cssdp.usask.ca* (*cssdp*) holding 
directories from three sources:

1. *sd-data.ece.vt.edu* (VT)
1. *sdcopy.usask.ca* (*sdcopy* - USASK)
1. *bslsuperdarnb.nerc-bas.ac.uk* (BAS)

Crontab entries on *cssdp* control downloading RAWACF data from VT and BAS with two scripts:

1. *download_vt_data* (VT)
1. *sync_bas_data* (BAS)

Crontab entries on *sdcopy* control pushing Canadian RAWACF data to *cssdp* with the script:

1. *auto_check_radar*

#### download_vt_data
This bash script takes two arguments:

1. The top-level holding directory to place the files in 
1. The radar to download files for (three letter radar code)

This script performs one main task: download all staged files from VT that are not already located
within the *cssdp* holding directories, then remove all files that were staged by VT.

It is scheduled to run at the following times for the following radars. **NOTE**, not all radars 
are supplied by VT, but these crontab entries are scheduled anyways.

```
01 17 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding ade
03 20 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding bks 
21 17 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding adw
41 17 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding bks
01 18 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding bpk
21 18 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding cly
31 18 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding cve 
41 18 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding cvw
01 22 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding dce
11 22 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding dcn
21 22 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding fhe
41 22 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding fhw
01 23 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding fir
24 23 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding gbr
41 23 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding hal
01 00 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding han
21 00 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding hkw
41 00 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding hok
00 23 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding inv
11 23 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding jme 
21 01 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding kap
41 01 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding ker
01 02 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding kod
21 02 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding ksr
31 02 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding lyr
41 02 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding mcm
01 03 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding pgr
21 03 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding pyk
41 03 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding rkn
01 04 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding san
21 04 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding sas
41 04 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding sch
01 05 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding sps
21 05 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding sto
41 05 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding sye
01 06 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding sys
21 06 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding tig
41 06 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding unw
01 07 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding wal
21 07 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding zho
``` 

#### sync_bas_data

This bash script takes one or two arguments, the location to store BAS data in, and an optional date
(year and month) to get data for. This script performs two main tasks:

1. Compare hashes files for the specified dates (default is the current year and month) with the 
hashes files on Globus and produce the following lists:
    1. Files that USASK has, but BAS doesn't (emailed to Kevin if there are any)
    1. Files that BAS has that are blacklisted (emailed to Kevin if there are any)
    1. Files that BAS has that have failed (emailed to Kevin if there are any)
    1. Files that BAS has, but USASK doesn't (that aren't blacklisted, or failed, these are downloaded)
2. Download any files that BAS has, that USASK doesn't (from the list above), and place in a 
holding directory.

It is scheduled at the following time via cron:

```
01 19 * * 0,1,3,4,5,6 flock /home/dataman/.baslock -c '/home/dataman/script/sync_bas_data.sh /local_data/local_data/holding/BAS'
```

In addition, a batch synchronization script is run once per week, and once per month for 
comparing files from previous months and years back to the start of SuperDARN data.

```
04 20 * * 2 flock /home/dataman/.baslock -c '/home/dataman/script/batch_bas_sync_weekly /local_data/local_data/holding/BAS'
12 21 11 * * flock /home/dataman/.baslock -c '/home/dataman/script/batch_bas_sync /local_data/local_data/holding/BAS'
```

#### auto_check_radar

This bash script takes one argument, the 3 letter radar code to check data for. This script performs
three main tasks:

1. Check the files for bunzip2 compression failures
1. Stage the files for VT
1. Copy the files to the *cssdp* server holding directory for Canadian data. 

It is scheduled via cron at the following times **NOTE** Borealis data is not currently being
distributed, so crontab entries for sas, pgr and cly do not appear here:

```
27 0,2,4,6,8,10,12,14,16,18,20,22 * * * /home/mrcopy/bin/auto_check_radar rkn >> /home/mrcopy/datacheck/rkn.log 2>&1
25 0,2,4,6,8,10,12,14,16,18,20,22 * * * /home/mrcopy/bin/auto_check_radar inv >> /home/mrcopy/datacheck/inv.log 2>&1
```

### Data flow from USASK holding directories onto Globus

In general, RAWACF data flows out of the USASK server *cssdp* holding directories from one script,
*gatekeeper_globus.py*. This singleton python script utilizes the 
[Globus Python SDK](https://globus-sdk-python.readthedocs.io/en/stable/). It takes several command
line arguments:
 
1. Path to local holding directory with SuperDARN data files
1. Path to the mirror root directory with directories for data type in it such as 'raw', 'dat' or 'fit'
1. An optional pattern for which files to place on the mirror

It performs several main tasks:

1. Test all files for the following:
    1. Are they blacklisted?
    1. Does the file already exist on the mirror? and if so, is it the same?
    1. Does the file pass all bzip2 tests?
    1. Is the file too small?
    1. Does the file pass all DMAP tests in [backscatter](https://github.com/SuperDARNCanada/backscatter)?
1. Upload those files that passed all the tests onto the Globus mirror in the appropriate place
and update the hash file(s) (as atomically as possible).
1. Email Kevin with files that failed any test.

It is scheduled via cron at the following times, for both files from VT and *sdcopy*, another time
for files from BAS.
```
39 */2 * * * python -u /home/dataman/globus_mirror_scripts/gatekeeper_globus.py  /local_data/local_data/holding/globus/ "~/chroot/sddata" >> /home/dataman/logs/globus/`date +\%Y\%m\%d.\%H\%M`_globus_gatekeeper.log 2>&1
01 18 * * * python -u /home/dataman/globus_mirror_scripts/gatekeeper_globus.py  /local_data/local_data/holding/BAS/ "~/chroot/sddata" >> /home/dataman/logs/globus/`date +\%Y\%m\%d.\%H\%M`_globus_gatekeeper.log 2>&1
```
