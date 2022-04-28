# A Brief Summary of SuperDARN Data Distribution
20210115
## Historical overview

The SuperDARN Data Distribution system has undergone many changes over the
lifetime of the SuperDARN project. Prior to hard drives being shipped from the University of Saskatchewan 
to institutions, other forms of media were written and shipped out. 
After hard drives were no longer used, the internet was utilized along with Network Attached 
Storage (NAS) storage provided by Westgrid, a Canadian computing resources group that supports research
projects. After that, a scaled-up version of the NAS system was put in place using Globus and 
storage provided by Compute Canada, which is a consortium of groups that includes Westgrid.
Along the way, other institutions have provided a lot of support to share the burden of data distribution:
starting with [JHU/APL](<https://github.com/SuperDARN/DDWG/blob/master/appendices/appendix_a.md>) 
until September/October 2013, as well as Virginia Tech. Finally in 2017 BAS came online as
another component of the SuperDARN data distribution system.

## Current Distribution Brief

The current system consists of four main institutions: British Antarctic Survey (BAS), University of 
Saskatchewan, The Chinese Academy of Sciences (CAS) and Virginia Tech. Virginia Tech is considered a holding 
institution, meaning they collect and collate radar data from most institutions, and then stage that data for Usask. 
Usask is considered a mirror institution, and collects data from four sources: the five Canadian radars, Virginia Tech's 
staging directory, the CAS distribution, and the BAS distribution. Usask collates the data and serves it via 
[Globus](<https://www.globus.org/>). BAS is both a holding institution and a mirror, as it 
gets radar data from most institutions as well as serving the data via an rsync server (that also
supports scp and sftp). The CAS server, located at the National Space Science Center (NSSC) is a mirror, it provides
data via an rsync server (that supports scp and sftp as well).

## DIAGRAM HERE - K. Sterne **

## Usask Details
As of December 10 2021.

The University of Saskatchewan downloads files from the VT `sd-data1` server, the NSSC data mirror as
well as the BAS data mirror. These downloads are first staged onto the `superdarn-cssdp`
server and then transferred over to the Globus system (`cedar.computecanada.ca`). In addition, the University of
Saskatchewan downloads its own radars (cly, inv, pgr, rkn, sas) to the `superdarn-cssdp`
server in duplication with the path through the VT system. This is a system loop check to
make sure files are maintaining integrity while being processed through the VT system.

The `superdarn-cssdp` server checks the hashes files for all files for both the
BAS/NSSC mirrors and the Globus mirror to compare the two. Files that are not found on the
Globus mirror are downloaded from the BAS/NSSC mirrors to the `superdarn-cssdp` server to be
placed on the Globus server. The BAS/NSSC servers have rsync access to the `cedar.computecanada.ca` server
in order to synchronize with it. 

Before files are uploaded to the `cedar.computecanada.ca` server, they are checked for dmap consistency,
bzip2 compression problems, file size issues, and if a file with the same name already exists. There
are [procedures](<https://github.com/SuperDARN/DDWG/blob/master/policies_procedures.md>) 
for what to do in various circumstances if a file has a problem.

Full details for the Usask data distribution system can be found 
[here](<https://github.com/SuperDARN/DDWG/blob/master/appendices/appendix_c.md>).

## VT Details
As of May 1 2020. Kevin Sterne to update**

The Virginia Tech (VT) system took over the single point of data collection from the PI
institutions from John Hopkins University/Applied Physics Lab (JHU/APL) in Sept 2013. This has 
continued with the majority of radars/PI institutions even with the BAS
data mirror coming online though they are not shown in the figure above. Of these, there
are a number intermittent data downloads that do not occur on an automatic basis. These
sporadic downloads are run manually due to data integrity issues at the PI institution
which have not had any movement towards correcting or feedback in a number of
months.

A subset of the radar files (shown in the figure above) that are being collected at VT are
then staged up for the University of Saskatchewan to download. This is a legacy setup
from years past where data is transferred to the University of Saskatchewan to be
distributed out from their institution.

## BAS Details
As of May 1 2020. Paul/Gareth to verify/update**

The BAS data mirror became operational in 2016 and began collecting radar data for a
subset of radars that had connections to the United Kingdom, Europe or Asia PI
institutions. An even smaller subset of radar data was being transferred to the BAS data
mirror first and not in parallel with transfers to the VT server. The BAS data mirror
provides a number of open source transfer protocols to SuperDARN and other users. The
data ingestion or collection occurs on the bslsuperdarna server while data 
access/distribution occurs on the bslsuperdarnb server. In addition, there is a well
documented catalogue API and web apps server that allows users to collect metadata
(such as file content checksums) through http queries. The catalogue API and web apps
server is run on the bslsuperdarnc server.

In 2020, BAS worked to get radar data syncing from each institution and should now be syncing data
for most if not all radars

.
## NSSC Details
As of Dec 10 2021. Fuli Ma to verify/update**

The NSSC data mirror became operational in 2021. Users can contact Fuli Ma to get access to the NSSC mirror via rsync or FTP













