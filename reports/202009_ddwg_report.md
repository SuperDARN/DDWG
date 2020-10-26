# DDWG Quarterly Report - 20200901

With information from the period June 5 to August 31 2020

## Contributors
| Name | Institution | 
| --- | --- |
| Kevin Krieger | USASK
| Paul Breen | BAS 

## General Announcements

1. DDWG Github repository is now being used to keep track of DDWG tasks, issues, past reports, etc.
1. VT had a very short downtime during the last week of August 
1. USASK worked with BAS and Compute Canada to set up rsync access to `cedar.computecanada.ca` for Paul Breen. Paul is now syncing data directly from the filesystem via `rsync`.
1. Several issues worked through to block files, see [github](https://github.com/SuperDARN/DDWG/issues) issues list for details
1. Globus sync script updated to work with Windows as well as Linux.
1. FITACF 3.0 files no longer shared
1. Temporary mirror decommissioned
1. 2194 old DAT files retrieved from optical media and placed on mirror
1. Failed files made available on mirror, as well as a master list of failed files 
1. Master list of updated files made available on mirror
1. Paul Breen working to sync data from all radars' data managers. Status is:

| Complete | Radar | Contact        | Status            |
| -------- | ----- | -------------- | ----------------- |
|          | ADE   | Bill Bristow   | Script written but not called via cron as radar status is uncertain |
|          | ADW   | Bill Bristow   | Script written but not called via cron as radar status is uncertain |
|          | BKS   | Kevin Sterne   | Contacted - awaiting account details |
| &#10004; | CLY   | Kevin Krieger  | Transferring data |
|          | CVE   | Simon Shepherd | Contacted - awaiting account details |
|          | CVW   | Simon Shepherd | Contacted - awaiting account details |
|          | FHE   | Kevin Sterne   | Contacted - awaiting account details |
|          | FHW   | Kevin Sterne   | Contacted - awaiting account details |
|          | GBR   | Kevin Sterne   | Contacted - awaiting account details |
| &#10004; | INV   | Kevin Krieger  | Transferring data |
|          | KAP   | Kevin Sterne   | Contacted - awaiting account details |
| &#10004; | KOD   | Bill Bristow   | Transferring data |
|          | KSR   | Bill Bristow   | Script written but not called via cron as data currently acquired from NICT |
| &#10004; | MCM   | Bill Bristow   | Transferring data |
| &#10004; | PGR   | Kevin Krieger  | Transferring data |
| &#10004; | RKN   | Kevin Krieger  | Transferring data |
| &#10004; | SAS   | Kevin Krieger  | Transferring data |
| &#10004; | SPS   | Bill Bristow   | Transferring data |
|          | WAL   | Alex Chartier  | Data will be pushed to us.  Likely to be setup November 2020 |


## Issues Encountered
1. The hard drive that was being used to hold RAWACF files before being placed on the mirror failed on August 28 between 18:27 and 20:03 UTC. Files lost include some files from VT and some from BAS that are recoverable.
1. The inode quota (how many files we can own) of 10M files has been reached on `cedar`, some files were removed to make space, but future applications to Compute Canada should have inode requirements.

## Help requested

1. Help requested from DAWG to provide software tools to fix files with outstanding issues, such as these [san files](https://github.com/SuperDARN/DDWG/issues/14)
    1. [lagfr_fix](https://github.com/SuperDARN/rst/blob/master/codebase/superdarn/src.bin/tk/tool/lagfr_fix.1.0/lagfr_fix.c) can be adapted to fix parameters in a file
    1. [test_raw](https://superdarn.github.io/rst/superdarn/src.bin/tk/testing/test_raw/index.html) can be used to check integrity of files (although [pydarn](https://pydarn.readthedocs.io/en/master/) and [backscatter](https://github.com/SuperDARNCanada/backscatter) do this as well and are already being used)
1. Help requested from DPTF to provide guidance on the following:
    1. Define who is responsible for fixing files - Answer was PI group
    1. Define what file types DDWG is responsible for - Answer was RAWACF and DAT only
1. Help requested from DSWG to:
    1. Define data product levels (level 0, level 1, etc). Operating under the assumption that level 1 is DAT and RAWACF
    1. Categories for blocking files to be added level 1 standard documentation
1. Help requested to retrieve files from old optical media where the USASK disc was damaged. Responses from several groups allowed USASK to retrieve the rest of the files.

## Outstanding Tasks

1. Send emails to all data managers to perform gaps resolution (September)
1. Send emails to all data managers with a list of files from their radar(s) that have failed a bz2 check or dmap consistency check (September)
1. Set up a holding directory on a RAID array to replace the failed hard drive. (September)
1. Move dat-to-rawacf files out of the main distribution and into a parallel directory (September)