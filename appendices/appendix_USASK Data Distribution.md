# Appendix C - USASK Data Distribution

## Historical overview

The Data Distribution system at the University of Saskatchewan has undergone many changes over the
lifetime of the SuperDARN project. Prior to hard drives being shipped to institutions, other forms
of media were written and shipped out. After hard drives were no longer used, the internet was
utilized along with NAS storage provided by Westgrid. After that, a scaled-up version of the NAS
system was put in place using Globus and storage provided by Compute Canada (now the Digital 
Research Alliance of Canada).

### Hard drive distribution

Prior to October 1st, 2013, JHU/APL (Robin Barnes/Stu Nylund) downloaded newly posted data from 
approximately 16 institutions nightly. This data was then processed through their scripts before 
they were eventually posted to the University of Saskatchewan's sdcopy server. Once four months 
worth of data (January to April, May to August, or September to December) were uploaded to sdcopy 
by JHU/APL, the data manager would write 17 hard-drives with copies of the four months worth of 
data. The hard drives were then shipped out to 16 institutions and one would be kept at the 
University of Saskatchewan for an extra backup.

In preparation for a distribution of data, the data manager at the UofS prepared 17 external 
hard drives by formatting them with an ext3 filesystem, partitioning them, and creating several 
directories for rawacf and fitacf data files to go. Fitacf files would be placed on the hard drive 
for radars that could not reliably transfer rawacf files.

After four months worth of data had been transferred to sdcopy by JHU/APL, the data was copied to 
six hard drives at a time (using USB external hard drives). This took about two work 
days. After the data was copied to the six connected hard drives, the data on the hard drives was 
read and checked for consistency with the original data on sdcopy. This “diffing” took roughly 
another work day.

Alongside the preparation of the hard drives, gap resolution would be done. The data manager 
would run a script on all the files, for all the radars over the past four month period. The 
output of the script is in the format:
20120318.14.rkn  --  20120318.22.rkn
20120319.00.rkn  --  20120319.14.rkn
20120321.16.rkn  --

This format indicates that there are no rawacf data files during the time period March 18th, at 
14:00 UTC to March 19th at 14:00 UTC. Then there are data files for March 19th 16:00 UTC until 
March 21st at 14:00 UTC. And there are no data files for March 21st at 16:00 UTC.

Emails are sent out to the individuals responsible for each radar, and they respond with 
information regarding the gaps, if they are real or not. If the gaps are not real, then they 
provide the data files to be included in the next distribution of hard drives. This is still done,
but is no longer done on a quarterly basis.

### NAS distribution via superdarn-cssdp.usask.ca

The SuperDARN Primary Data Mirror was implemented using WestGrid storage space. WestGrid is part 
of a consortium of High Performance Computing (HPC) resources available to academic researchers in Canada. 
The WestGrid storage space was accessed on a desktop computer running Linux in the SuperDARN 
Canada computer room, and was mounted as a Networked File System (NFS). In order to ensure 
adequate security, the protocol used was the Secure File Transfer Protocol (sftp), and it ran in a 
segregated environment (chroot jail) on the Linux computer. The segregation allowed the users of the SuperDARN 
Primary Data Mirror read-only access to the data, and only the directories that contain the data. 
In this way, the rest of the file system was inaccessible to users.

![structure](../img/cssdp_dir_structure.png)

The above image shows a view of the directory structure of the old SuperDARN data mirror.

A short description of the directory structure:
* `/sddata` – This is the root of the mirror. It stands for 'SuperDARN Data'.
* `/sddata/master.hashes` – This file is updated daily and contains a line for every `YYYYMM.hashes`
file on the mirror. It is useful for determining what months have new or changed data, as the 
hash for that specific hashes file will change. An example usage of this is to keep a local 
copy of this master.hashes file, and periodically compare your local copy with the server's 
copy to see what months you need to synchronize with. Note that the algorithm sha1sum is used to
calculate checksums/hashes.
* `/sddata/raw` – This is the directory for 'raw' data (currently, only 'rawacf' files).
* `/sddata/raw/2010` – Directory for 'raw' 2010 data.
* `/sddata/raw/2010/04` – Directory for 'raw' April 2010 data.
* `/sddata/raw/2010/04/201004.hashes` – An up-to-date list of all the hashes for files in the 
`/sddata/raw/2010/04/` directory. It is used by the example synchronization script sent out 
previously, as well as the gatekeeper to the mirror. Every time a new or updated file is placed 
in the `/sddata/raw/2010/04/` directory, it will be updated. It is not guaranteed to be sorted in
any meaningful way.


## Current Distribution

The current system utilizes [Globus](<https://www.globus.org/>), which is a system for research data
management. At a very high level, it allows fast, parallel transfers of large data sets between 
`endpoints`. An endpoint can be a server in the cloud or your personal laptop or desktop. 

At SuperDARN Canada, we have access to the Globus endpoint on `cedar.computecanada.ca`, which has 
the Globus server software installed and acts as an endpoint. The Globus server software has
hardware acceleration on `cedar` which effectively speeds up data transfers and accesses. 
We are able to share subdirectories of this storage with groups of users. In this way, we can 
customize the user's access to various data. The endpoint currently in use is called 'computecanada#cedar-globus'.
Currently, we use this sharing ability with a group of users to allow read-only access to the main
RAWACF and DAT file distribution. Alongside the main distribution, we expose the directory 
containing files removed from the distribution for any reason (blocked, failed in some way, etc).

A user wishing to have access to this data should contact the DDWG.

### Data flow into USASK holding directories

At USASK, there is a server called *superdarn-cssdp.usask.ca* (*cssdp*) that utilizes a Network
Attached Storage (NAS) to store data.
In general, RAWACF data flows into the USASK server *cssdp* holding 
directories from 8 sources:

1. *sd-data.ece.vt.edu* (VT)
1. *bslsuperdarnb.nerc-bas.ac.uk* (BAS)
1. *superdarn-mirror.nssdc.ac.cn* (NSSC)
1. Canadian radars (five of them - SAS, PGR, RKN, INV, CLY)

Crontab entries on *cssdp* control downloading RAWACF data from VT, BAS, and NSSC with three scripts:

1. *download_vt_data* (VT)
1. *sync_bas_data* (BAS)
1. *sync_nssc_data* (NSSC)

A data_flow daemon for each Canadian radar on *cssdp* control conversion from HDF5 format to DMAP format. 
The daemons then distribute the Canadian radar data to VT, BAS and NSSC directories, as well as a holding
directory for uploading to the *cedar* Globus service.
These daemons utilize the inotify toolset to trigger when there is data to work on, eliminating any 
extra delays in processing data through the data_flow chain.


#### download_vt_data
This bash script takes two arguments:

1. The top-level holding directory to place the files in 
1. The radar to download files for (three letter radar code)

This script performs one main task: download all staged files from VT that are not already located
within the *cssdp* holding directories, then remove all files that were staged by VT after verifying the download.

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
00 23 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding ice
04 23 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding icw
08 23 * * * /home/dataman/script/download_vt_data /local_data/local_data/holding inv
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

#### sync_bas_data (and sync_nssc_data)

These bash scripts take one or two arguments, the location to store BAS/NSSC data in, and an optional date
(year and month) to get data for. This scripts perform two main tasks:

1. Compare hashes files for the specified dates (default is the current year and month) with the 
hashes files on Globus and produce the following lists:
    1. Files that USASK have, but BAS/NSSC doesn't that are older than 3 days (emailed to the USASK data manager if there are any)
    1. Files that BAS/NSSC have that are blocked (emailed to USASK data manager if there are any)
    1. Files that BAS/NSSC have that have failed (emailed to USASK data manager if there are any)
    1. Files that BAS/NSSC and USASK both have, but the hashes differ (emailed to USASK data manager if there are any)
    1. Files that BAS/NSSC have, but USASK doesn't (that aren't blocked, or failed, these are downloaded)
2. Download any files that BAS/NSSC have, that USASK doesn't (from the list above), and place in a 
holding directory.

The BAS/NSSC sync scripts are scheduled at the following times via cron:

```
01 19 * * * flock /home/dataman/.baslock -c '/home/dataman/script/sync_bas_data.sh /data/holding/BAS'
33 19 * * * flock /home/dataman/.nssclock -c '/home/dataman/script/sync_nssc_data.sh /data/holding/NSSC'
```

In addition, a batch synchronization script is run once per week, and once per month for 
comparing files from previous months and years back to the start of SuperDARN data.

```
04 20 * * 2 flock /home/dataman/.baslock -c '/home/dataman/script/batch_bas_sync_weekly /data/holding/BAS'
12 16 03 * * flock /home/dataman/.baslock -c '/home/dataman/script/batch_bas_sync /data/holding/BAS'

04 20 * * 3 flock /home/dataman/.nssclock -c '/home/dataman/script/batch_nssc_sync_weekly /data/holding/NSSC'
12 16 03 * * flock /home/dataman/.nssclock -c '/home/dataman/script/batch_nssc_sync /data/holding/NSSC' 
```

#### campus_dataflow@[sas|pgr|rkn|inv|cly].service

This daemon waits for new data to arrive at *cssdp* from the five Canadian radars, and then calls two scripts in 
succession to convert the data (*convert_on_campus*), and then distribute it (*distribute_borealis_files*).
It is started as a system daemon/service via systemctl, one instance for each radar.


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
    1. Are they blocked?
    1. Does the file already exist on the mirror? and if so, is it the same?
    1. Does the file pass all bzip2 tests?
    1. Is the file too small?
    1. Does the file pass all DMAP tests in [pydarnio](https://github.com/SuperDARN/pyDARNio)?
1. Upload those files that passed all the tests onto the Globus mirror in the appropriate place
and update the hash file(s) (as atomically as possible).
1. Upload any files that failed any check to a `failed` directory on `cedar.computecanada.ca` as well
as update the `all_failed.txt` file located in the `sddata/config/` directory.
1. Email USASK data manager with files that failed any test.

It is scheduled via cron at the following times, once for both files from VT and Canadian radars (2 hour cadence), once a day for files from BAS, and once a day for files from NSSC:
```
55 */2 * * * source /home/dataman/globus_mirror_scripts/pydarnio-venv/bin/activate; python -u /home/dataman/globus_mirror_scripts/gatekeeper_globus.py  /data/holding/globus/ "/project/6008057/sdarn/chroot/sddata" >> /home/dataman/logs/globus/`date +\%Y\%m\%d.\%H\%M`_globus_gatekeeper.log 2>&1
01 18 * * * source /home/dataman/globus_mirror_scripts/pydarnio-venv/bin/activate; python -u /home/dataman/globus_mirror_scripts/gatekeeper_globus.py  /data/holding/BAS/ "/project/6008057/sdarn/chroot/sddata" >> /home/dataman/logs/globus/`date +\%Y\%m\%d.\%H\%M`_globus_gatekeeper.log 2>&1
01 46 * * * source /home/dataman/globus_mirror_scripts/pydarnio-venv/bin/activate; python -u /home/dataman/globus_mirror_scripts/gatekeeper_globus.py  /data/holding/NSSC/ "/project/6008057/sdarn/chroot/sddata" >> /home/dataman/logs/globus/`date +\%Y\%m\%d.\%H\%M`_globus_gatekeeper.log 2>&1

```

### Synchronization with BAS

In July 2020, rsync access was made available to BAS on ```cedar.computecanada.ca```. The repository
located on ```cedar``` was set up with Access Control Lists (ACLs) to allow BAS to have read-only access.

The ACLs were set up as follows:

1. `setfacl -Rdm u::rwx *`
1. `setfacl -Rm u::rwx *`
1. `setfacl -Rdm g::rwx *`
1. `setfacl -Rm g::rwx *`
1. `setfacl -Rdm u:bas:rx *`
1. `setfacl -Rm u:bas:rx *`

These 6 commands, when executed on the top level directory for SuperDARN data, will allow the `bas`
user to have read-only access to files, while allowing the file owner and file group owner to have
read-write access. The results can be checked with `getfacl`.

### Manually executed tasks

There are occasional tasks that require human intervention.

#### Removing files

When a data file requires removal from the main distribution, it is placed into a 
'deletions' directory. This is done manually by executing the script *delete_files_globus.py*.
This python script takes 5 arguments:

1. An optional data type, the default is 'raw' (-t DATA_TYPE)
1. The location of the mirror root directory, under which appear directories for each data 
type (-r MIRROR_ROOT)
1. The location of the mirror deletions directory, to place the removed files in 
(-d DELETIONS_DIRECTORY) 
1. The location of the logging directory (-l LOGGING_DIRECTORY)
1. Finally, a text file with a list of files to delete from the distribution, one per line

The script performs two main tasks:

1. Remove the files from the hashes file on the mirror
1. Move the files into a dated directory under the DELETIONS_DIRECTORY

#### Blocking files

Blocking files is done by first updating the blocklist on Globus, located in the 
directory: `/chroot/sddata/config/blocklist/`. The files to be blocked are simply placed in
a text file with a descriptive name, then appended to the file `all_blocked.txt` as well as
described succinctly in the text file `README`, usually just referencing the issue number.

After manual updating of the blocklist is complete, if the files exist on the mirror, they are 
removed using the 'Removing files' section above

#### Updating files

Updating files is done by manually executing the *update_files_globus.py* script. A list of all
files ever updated is located at : `/chroot/sddata/config/all_updated.txt`.
This python script takes 4 arguments:

1. Data type (-t DATA_TYPE)
1. Mirror root directory (-r MIRROR_ROOT)
1. Mirror updates directory (-d UPDATES_DIRECTORY)
1. Local directory containing files to update on the mirror

The script performs three main tasks for each file to be updated:

1. Find the file entry in the appropriate hash file on the mirror and replace it with the new 
file's hash
1. Move the old file to the UPDATES_DIRECTORY
1. Upload the new file
