# DDWG Quarterly Report - 202102
 
 **** TODO : DRAFT ****

With information from the period November 1 2020 to January 31 2020

Other report periods are:
1. February 1 to April 30 with an update due by May 15
1. May 1 to August 31 with an update due September 15
1. September 1 to October 31 with an update due November 15

## Contributors
| Name | Institution | 
| --- | --- |
| Kevin Krieger | USASK
| Paul Breen | BAS
| Kevin Sterne | VT 

## General Announcements

1. 110 old hok, hkw and sye files were added to the mirror after a gaps-check found some missing files.
1. PRIC in the beginning stages of setting up data mirror
1. Meeting held between VT and USASK to provide information about how the mirror system works.
1. DSWG decided upon a naming convention for data files with multiple data sets. 
Therefore, Borealis files are now being placed on the Globus mirror and are being staged for BAS and VT as of
January 20 2021. A backlog of data for sas, pgr, cly is still to be uploaded after being checked and renamed.
1. Sent emails to all data managers in September 2020 to perform gaps resolution as well as to inform them of any 
failed files. Status is:

| Complete | Radars                   | Contact            | Status            |
| -------- | -----------------------  | ----------------   | ----------------- |
| &#10004; | sas, pgr, rkn, inv, cly  | Marci Detwiller    | Responded and missing files uploaded to mirror |
| &#10004; | hok, hkw                 | Nozomu Nishitani   | Responded and missing files uploaded to mirror |
|          | fhe, hfw, gbr, bks, kap  | Kevin Sterne       | Reminder email sent |
|          | sps, mcm, ade, adw, kod  | Bill Bristow       | Reminder email sent |
|          | cve, cvw                 | Simon Shepherd     | Responded, waiting for data server rebuild |
| &#10004; | han, pyk, sto            | Tim Yeoman         | Responded and verified |
| &#10004; | ker                      | Aurélie Marchaudon | Responded and verified |
|          | ksr                      | Tsutomu Nagatsuma  | Redminder email sent |
|          | tig, unw, bpk            | Jim Whittington, John Devlin, Mark Gentile | Responded and verified |
| &#10004; | san                      | Judy Stephenson    | Responded and verified |
| &#10004; | fir                      | Paul Breen, Tim Barnes | Responded and verified |
| &#10004; | wal                      | Alex Chartier, Jordan Wiker | Responded and verified |
| &#10004; | dce, dcn                 | Enrico Simeoli     | Responded and verified |
| &#10004; | sye, sys                 | Akira Sessai Yukimatu, Yuka Kadowaki  | Responded and missing files uploaded to mirror |
|          | zho                      | Jianjun Lui        | Responded: waiting for files to come in the spring |
|          | jme                      | Zhi Wei Wang       | Reminder email sent |


1. Paul Breen working to sync data from all radars' data managers. Status provided by Paul is:

| Complete | Radar | Contact        | Status            |
| -------- | ----- | -------------- | ----------------- |
|          | ADE   | Bill Bristow   | Script written but not called via cron as radar status is uncertain |
|          | ADW   | Bill Bristow   | Script written but not called via cron as radar status is uncertain |
|          | BKS   | Kevin Sterne   | Contacted - awaiting account details |
| &#10004; | CLY   | Kevin Krieger  | Transferring data |
| &#10004; | CVE   | Simon Shepherd | Transferring data |
| &#10004; | CVW   | Simon Shepherd | Transferring data |
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


## Help requested
Data managers please verify data gaps.

## Outstanding Tasks
Rename, check, verify backlog of Borealis data for sas, cly, pgr and upload to BAS/VT holding directories
as well as the Globus mirror.