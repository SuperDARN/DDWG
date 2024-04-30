# DDWG Semi-annual report - 202405
Authors: Ma Fuli

With information from the period October 1 2023 - April 15 2024

The report periods are:
1. October 1 to April 15 with an update due by May 1 
2. April 16 to September 30 with an update due October 15

# Executive Summary
During this reporting period, we had closed many actions left from last group meeting. An official block list was created, and a new list of DDWG memebers was established. There were a lot of files blocked and removed from three mirrors over the last six months. All details are described in general announcement. 

# General Announcements
1. Data gaps for 2022 data were sent to data managers and got confirmed by the end of Dec. 2023. All of 2022 data were released in FRDR and  SuperDARN China Website in Feb. 2024.
2. An official block list was created based on the list from NSSC,GLOBUS AND BAS in Oct. 2023, and it was made available on the GitHub (DDWG/Blocklist/blocklist_all 20231028.txt).
3. We update the  list of DDWG members only including those people who're currently contribute to the group, already shared it on the GitHub (DDWG/charter.md)
4. SuperDARN Canada making a new end point for the mirror that works with Globus v5. It's not working as expected at beginning,NSSC server manage to sync data from Globus in Nov. 2023. 
5. NSSC mirror opened FTP service to the PIs and public users, detailed instruction for accessing the ftp service was shared in GitHub.
6. Update SuperDARN data distribution system diagram and placed it on Github.
7. SuperDARN data volume trend analysis was conducted and the report was sent to the groups.
8. BAS is in the process of setting up a new mirror server to manage the acquisition of data from institute staging servers, this new server is replacing bslsuperdarna.nerc-bas.ac.uk.
9. File Updates
    - There are 21 PGR files from 2006 January 01 that were removed and blocked at three mirrors according to request from Draven Galeschuk.
    - Files between August and September for cly and rkn, and for sas have a problem when processing these files into fitacf or fitacf3 files.The broken files have been reprocessed and the new fixed files were available on Globus. 
    - Remove 18 error files of wal radar from the mirrors according to the request from Evan.
    - 1421 files from RKN, CLY AND SAS were generatetd incorrectly by the new computersinstaled at those sites, old data was removed and new data was uploaded at the mirrors.
    - 13 files with no useful data from icw was removed in Oct. 2023. 

# Outstanding Tasks

1. Get all 2022 files to be included in FRDR and SuperDARN China Website.
2. SuperCanada made a new end point for the mirror that works with Globus V5.
3. NSSC mirror opened FTP service to SuperDARN users.
4. A new list of DDWG members was released.

# Future Topics
1. Research the data checking with pydarnio, what is being checked.
2. Collate and make available information about how each mirror checks files
3. Discuss and decide upon policy for using mirrors to distribute SND files (sounding files)
4. Discuss SuperDARN data volume trend analysis and finalize the report, more storage/efficient processing will be required.
5. Finalize file checking policy with DDWG members
6. Finalize policy for what records to keep at mirrors
7. Finalize policy when adding older files to the mirrors
8. Plans to synchronize the mirrors and to keep them synchronized
