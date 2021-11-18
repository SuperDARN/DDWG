# DDWG Quarterly Report - 202111
Author: Kevin Krieger,
with input from DDWG members

With information from the period September 1 to October 31 2021

The report periods are:

1. February 1 to April 30 with an update due by May 15
1. May 1 to August 31 with an update due September 15
1. September 1 to October 31 with an update due November 15
1. November 1 to January 31 with an update due by February 15

## Executive Summary
The three mirrors (BAS, NSSC, USASK) are operating normally aside from some syncing issues at 
BAS with the new Penn State data server, and a power outage resulting in some short downtime.
To gain access to the NSSC data mirror, contact Ma Fuli.


## General Announcements

The following are updates from Paul Breen at BAS:

1. We had an unplanned site-wide power outage on the weekend of
2021-10-09 which meant the BAS mirror was unavailable.
1. We were notified that the BPK file and directory conventions had
changed, so updated our scripts accordingly and began pulling over a
sizeable backlog.
1. We have an issue removing files from the new Penn State staging server
once transferred, which results in the transfer being seen as having
errors, meaning the data stay in the holding area and are not placed on
the mirror.  The issue has been identified but not yet resolved.  In
short, it's a regression in the versions of rsync in use, where the edge
case of the source files being symlinks and specifying the option to
remove them after syncing means that rsync thinks they've changed during
the transfer, and so refuses to remove them. 
1. A list of data transfers' status provided by Paul Breen at BAS is below. Only the radars not transferring yet are shown:

| Radar | Contact        | Status            |
| ----- | -------------- | ----------------- |
| ADE   | Bill Bristow   | Script written but not called via cron as radar status is uncertain |
| ADW   | Bill Bristow   | Script written but not called via cron as radar status is uncertain |
| WAL   | Alex Chartier  | Data will be pushed to us. Remains to be completed | 

The following are general updates:

1. A large storm at Sanae resulted in several ropes breaking,  therefore no/sub-standard data will be
available for the next while.
1. USASK is writing the annual report to continue to have access to storage resources on cedar.computecanada.ca (where
the Globus server is located)
1. The Rankin Inlet and Inuvik radars were updated to the new Borealis system in September, so now those radars'
data files have a similar naming convention to sas, pgr and cly (example: 20211001.0000.00.rkn.a.rawacf.bz2)
1. The Virginia Tech servers were moved from their temporary location to a permanent location on September 23. 
This move resulted in downtime of a few hours for the data distribution servers as well as the website.
1. A new server status page was created at USASK by Dr. Carley Martin: https://superdarn.ca/server-status
There is also an API available to query some of the information available on the page, please email for details.


## Issues Encountered
None

## Help requested
None

## Outstanding Tasks & Future projects
1. SAS backlog of data from 2019/2020
1. Data gaps reconciliation and failed files reconciliation