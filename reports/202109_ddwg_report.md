# DDWG Quarterly Report - 202109
Author: Kevin Krieger,
with input from DDWG members

With information from the period May 1 to August 31 2021

The report periods are:
1. February 1 to April 30 with an update due by May 15
1. May 1 to August 31 with an update due September 15
1. September 1 to October 31 with an update due November 15
1. November 1 to January 31 with an update due by February 15

## General Announcements
1. The NSSC data mirror is now operating with rsync access for Paul Breen at BAS and Kevin Krieger at USASK. 
A meeting was held on July 15 to discuss integration of the NSSC data mirror. 
The action items from the meeting were all completed by August 31 2021:
    1. Jiaojiao and Fuli received scripts and mirror setup information from BAS/Paul Breen
    1. Rsync access to cedar is set up for Fuli, just as it is for Paul Breen
    1. BAS and Usask have rsync access to NSSC
    1. NSSC set up Globus to sync with the USASK Globus mirror
1. Annual meeting of the DDWG was held on May 26th at 12UT. See minutes sent out for details
1. Meeting between WG chairs and Dr. Kathryn McWilliams was held on May 5 2021 to discuss: 
hierarchy, communication, membership and voting within Working Groups.
1. A meeting between WG chairs and the PIs was held on May 17 2021 at 12UT. This was an opportunity to
discuss communication and responsibilities of the working groups and the PI group. 
1. Several power outages (scheduled) occurred during the reporting period at USASK, this resulted in delays for files
getting to the mirror
    1. May 21 - 24
    1. June 4 - 7
1. Dr. Carley Martin built a new visual tool at USASK to see the Globus server's file status for each 
radar: https://superdarn.ca/server-status
1. A server failure at usask and subsequent IP address change resulted in a delay in files getting to the usask mirror in May 2021.
1. To make the data management system at USASK more robust, a network attached storage (NAS) device is now being used
to stage data for BAS, VT and NSSC on the server superdarn-cssdp.usask.ca, this was done on May 28th 2021.
1. FRDR has now published historical SuperDARN datasets from 1993 to 2018. https://www.frdr-dfdr.ca/repo/collection/superdarn
1. WG guidelines were released by the PIs.
1. A backlog of GBR data was uploaded to mirrors in August by Kevin Sterne. The backlog of data is between 20200824.1600 and 
20210302.2001 though there are large gaps in the data.  The list below represents when there is no data expected:
    1. 20200902.1200 and 20201029.2312
    1. 20210118.0200 and 20210226.1429
1. Kevin Sterne began staging VT radar data for Paul Breen at BAS in May 2021.
1. BAS is in the process of pushing out automated mirror notifications to the PIs which has raised additional tasks:
    1. We've made the notifications easier to interpret and less cryptic.
    1. We've done a Data Protection Impact Assessment (DPIA), as we will be holding personal information of data contacts (name, email).  This was required for General Data Protection Regulation (GDPR) compliance. 
    1. The DPIA requires us to seek initial consent, and to periodically reseek that consent, probably annually.
    1. The DPIA also requires us to make available a suitable privacy notice for this process.
1. A list of data transfers' status provided by Paul Breen at BAS is below:

| Complete | Radar | Contact        | Status            |
| -------- | ----- | -------------- | ----------------- |
|          | ADE   | Bill Bristow   | Script written but not called via cron as radar status is uncertain |
|          | ADW   | Bill Bristow   | Script written but not called via cron as radar status is uncertain |
| yes | BKS   | Kevin Sterne   | Transferring data |
| yes | CLY   | Kevin Krieger  | Transferring data |
| yes | CVE   | Simon Shepherd | Transferring data |
| yes | CVW   | Simon Shepherd | Transferring data |
| yes | FHE   | Kevin Sterne   | Transferring data |
| yes | FHW   | Kevin Sterne   | Transferring data |
| yes | GBR   | Kevin Sterne   | Transferring data |
| yes | INV   | Kevin Krieger  | Transferring data |
| yes | KAP   | Kevin Sterne   | Transferring data |
| yes | KOD   | Bill Bristow   | Transferring data |
| yes | KSR   | Bill Bristow   | Transferring data |
| yes | MCM   | Bill Bristow   | Transferring data |
| yes | PGR   | Kevin Krieger  | Transferring data |
| yes | RKN   | Kevin Krieger  | Transferring data |
| yes | SAS   | Kevin Krieger  | Transferring data |
| yes | SPS   | Bill Bristow   | Transferring data |
|     | WAL   | Alex Chartier  | Data will be pushed to us. Remains to be completed | 

## Issues Encountered
None

## Help requested
None

## Outstanding Tasks & Future projects
1. VT server move in fall 2021
1. PGR and SAS backlog of data from 2019/2020