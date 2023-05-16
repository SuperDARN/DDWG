# DDWG Semi-annual Report - 202305
Author: Kevin Krieger with input from DDWG members

With information from the period October 1 2022 - April 15 2023

The report periods are:

1. October 1 to April 15 with an update due by May 1 
2. April 16 to September 30 with an update due October 15

## Executive Summary
Over the last six months, there were some files blocked and removed, 
the USASK mirror was updated to check files with the same method that 
the NSSC mirror does, and two new radars (ICE/ICW) started contributing to the
network. There are some items to be addressed in the near future.
See <https://superdarn.ca/server-status> for a new comparison tool.

## General Announcements

The following are general updates:

1. Seven (7) files from HKW 20211012 were blocked as the radar was 
not working properly during that time. This was done on 20221223
2. 664 files from CLY, INV, RKN and SAS from 20230404 and 20230405 were
blocked on 20230428. This was done as the radars were in an RX only mode
instead of TX/RX mode, which was incorrect for the context.
3. The usask mirror was udpated to use pydarnio instead of backscatter to
check for DMAP consistency. This was done on 20230404.
4. ICE and ICW radar data became available on mirrors on the week of 20230321, after
transfer set up to BAS. CVE/CVW transfers were re-enabled as well.
5. Data gaps for 2021 data were sent to data managers in August 2022, and 
reminder emails were sent in 202210.
6. Globus had a scheduled downtime on Saturday March 11 at 10AM CST for a few hours.
7. See new visualization tool for mirror file differences here: <https://superdarn.ca/server-status>
8. JME data are now transferred from NSSC mirror to BAS instead of the PI staging server
9. BPK transfer to BAS is now using the new La Trobe staging server, and 
TIG/UNW transfers were removed due to radars being offline
10. FIR data has gaps for October/December 2022 due to operational issues and 
radar maintenance.

## Outstanding Tasks & Future projects
1. Data gaps check for 2022, for upload to FRDR by the end of 2023
2. Updated bistatic files from CVE/CVW need to be uploaded to
mirrors (1137 CVE files, 1 CVW file)
3. Set up transfers for WAL data to BAS and/or NSSC
4. Update the repository diagrams for data flows
