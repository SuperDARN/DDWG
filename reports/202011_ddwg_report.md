# DDWG Quarterly Report - 202011

With information from the period September 1 to October 31 2020

## Contributors
| Name | Institution | 
| --- | --- |
| Kevin Krieger | USASK
| Paul Breen | BAS
| Kevin Sterne | VT 

## General Announcements

1. Evan produced a list of file differences between the BAS and USASK mirrors. See DDWG email dated 20201006.
1. The first move (of two) of the VT servers was completed in late August with a downtime of ~6 days. 
After the move, connection to zho files was lost, Kevin Sterne is still working with Jianjun to update 
network settings to start the data transfers again. 
The second move of VT servers is possible before the end of the year.
1. Finished moving all recently generated `dattorawacf` files to a separate directory than the main distribution. This was done in response to a request from Evan so that users would not accidentally download two separate versions of a file.
1. Inode quota requested and increased on `cedar.computecanada.ca`. This was done so that the # of files limit available on the SuperDARN Canada storage allocation would not be reached, as it was in summer 2020. Reaching this limit prevents any more files from being uploaded to the mirror.
1. Uploaded 2017 and 2018 `RAWACF` files to two different [FRDR](<https://www.frdr-dfdr.ca/repo/>) (Federated Research Data Repository) submissions. This was done so that scientists can have a DOI to refer to in their publications, and as an archive of the SuperDARN data. 
1. Set up a holding directory on a RAID5 array to replace the failed hard drive on `superdarn-cssdp.usask.ca`. This was done so that the server that acts as a staging area for files doesn't have to store the data locally. Instead, the data is stored on a NAS (Network Attached Storage) that can suffer one drive failure before losing data.
1. Sent emails to all data managers to perform gaps resolution as well as to inform them of any 
failed files. Status is:

| Complete | Radars                   | Contact            | Status            |
| -------- | -----------------------  | ----------------   | ----------------- |
| &#10004; | sas, pgr, rkn, inv, cly  | Marci Detwiller    | Responded and missing files uploaded to mirror |
|          | hok, hkw                 | Nozomu Nishitani   | Email sent |
|          | fhe, hfw, gbr, bks, kap  | Kevin Sterne       | Email sent |
|          | sps, mcm, ade, adw, kod  | Bill Bristow       | Email sent |
|          | cve, cvw                 | Simon Shepherd     | Email sent |
| &#10004; | han, pyk, sto            | Tim Yeoman         | Responded and verified |
|          | ker                      | Aurélie Marchaudon | Email sent |
|          | ksr                      | Tsutomu Nagatsuma  | Email sent |
|          | tig, unw, bpk            | Jim Whittington, John Devlin, Mark Gentile | Email sent |
| &#10004; | san                      | Judy Stephenson    | Responded and verified |
| &#10004; | fir                      | Paul Breen, Tim Barnes | Responded and verified |
| &#10004; | wal                      | Alex Chartier, Jordan Wiker | Responded and verified |
| &#10004; | dce, dcn                 | Enrico Simeoli     | Responded and verified |
|          | sye, sys                 | Akira Sessai Yukimatu, Yuka Kadowaki  | Email sent |
|          | zho                      | Jianjun Lui        | Responded: waiting for files to come in the spring |
|          | jme                      | Zhi Wei Wang       | Email sent |



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
None

## Help requested
Help requested from data managers to verify their data gaps with Kevin Krieger

Help requested from data managers to set up data transfers with Paul Breen

## Outstanding Tasks
None
