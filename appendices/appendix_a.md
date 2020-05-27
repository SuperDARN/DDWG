# Appendix A - JHU/APL Data Distribution
A brief account of the functions of the holding institution for the data distribution that were 
previously performed at JHU/APL (Author: Ethan Miller):

* The data distribution tasks are handled day-to-day by Stu Nylund.
* Rawacf and fitacf files (and wal’s iqdat files) are generated at the remote radar stations and 
collected, either daily via the network or periodically via disk delivery, at remote sites such as
VT, Fairbanks, CNRS, etc.
* At 0200 LT each night, APL’s morpheus runs a cron job to download all the latest rawacf and 
fitacf files and processes them (creating a log file in the process).  The stages of this 
processing are as follows
    * Download: Each data file is downloaded from the remote site to a station-specific 
    subdirectory under the incoming directory and, as record, an zero-lengthed file 
    (<filename>.cat) is created in a station-specific subdirectory under the cat directory.  
    For some remote sites, the remote files are deleted once they are downloaded to APL.
    * Backup: All downloaded files are copied to a station-specific subdirectory under the backup 
    directory.  This unchanged files serves as a record of the stations’ version of the original 
    file.
    * Tests: Most remote sites’ data files are posted as compress files (gzip or bzip2), so a next 
    step is to check that the compress files is good (i.e., as a test of a valid network transfer).
    If the compressed file is bad, the file is moved to a station-specific subdirectory under the 
    bad directory.  Similarly, the file is moved to the station-specific bad directory if it is 
    empty, had a problem in naming or in being stored locally (i.e., an APL disk becomes full).  
    Error entries for each of these cases are made in a station-specific log file.
    * Conversion: The file is next modified/converted slightly (e.g., headers properly filled in, 
    etc) – I am not familiar with this conversion step, and Rob had talked about 
    changing/eliminating it.  If any problem is detected, the file is put in a station-specific 
    subdirectory under the bad directory.
    * Storage: The converted file is next copied to a type-specific subdirectory (rawacf, fitacf, 
    iqdat) under the data directory for storage.
    * Upload: The uploading of files to Saskatchewan is done in two steps – an automatic 
    preliminary step under the process cron job and a manual step performed periodically
        * Automatic: The converted file is next copied to a type-specific subdirectory 
        (new.rawacf, new.fitacf) under the outgoing directory for accumulation and subsequent 
        uploading to Saskatchewan.  
        * Manual: An upload is later manually initiated by scripts (via upload.rawacf and 
        upload.fitacf); under either script, the files are moved to a type-specific subdirectory 
        (rawacf, fitacf) under the outgoing directory, all files in this subdirectory are rsync 
        uploaded to Saskatchewan, and finally each file is then moved to a type-specific 
        subdirectory (arc.rawacf, arc.fitacf) under the outgoing directory.

Notes:

* As far as possible RAWACF files should be transferred daily to the holding institution
* The files are compressed before transfer to the holding institution (bzip2, gzip, others) 
* The standard for data transfer is a script that runs from the holding institution that ‘pulls’ 
RAWACF files from a directory designated by the PI via sftp or scp; if a ssh-based data transfer 
protocol is not possible, ftpcould be used.  Alternatively, the PI might opt to ‘push’ his files 
into a directory designated by the holding institution for this purpose
* U Sas may upload files from the holding institution at any time
* Checking of files for completeness before merging is carried out at U Sas; the data distribution 
working group member of each PI institution is asked to confirm or correct apparent gaps
* Beginning Oct. 1, 2013 the holding institution (Virginia Tech) will perform additional checks on 
the files for integrity  as they arrive and notify PIs of any issues
* If a regular, automated connection to the holding institution cannot be made from a PI 
institution, measures will be taken to route the data transfers to the holding institution through 
a relaying institution.  
