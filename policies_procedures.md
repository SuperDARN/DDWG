## Quality Control

Defining the scope of responsibility for the DDWG regarding quality control is important. 
The DDWG should be responsible for ensuring that files can be read and accessed properly. 
The DDWG is *NOT RESPONSIBLE* for the content of files or the quality of the data itself. 
That responsibility falls within the another working group's scope. TODO: Which WG?

### Raising Issues

Anyone can raise issues to the DDWG. The order of preference for raising issues is:
 1. Via the github repository here: <https://github.com/SuperDARN/DDWG/issues/new/choose>
 2. Via an email to the DDWG mailing list: <darn-ddwg@isee.nagoya-u.ac.jp>
 3. Via an email to the chair or co-chair(s)

### Blacklisting

Blacklisting refers to the listing of specific SuperDARN level 1 data that should not be distributed
to the SuperDARN community via the official SuperDARN data repositories. A file may be blacklisted
for any number of reasons.

The blacklist of SuperDARN files shall be accessible on a public website, in text file format. 
All files that are part of the blacklist should be described in another text file in the same 
location (i.e. a README file).

The procedure for blacklisting a set of files is:
1. A PI, data manager, DDWG member, etc, will raise an issue outlining certain data files, 
recommending them to be blacklisted.
2. The DDWG member(s) responsible for maintaining the official SuperDARN data repositories will 
remove the list of files from the repository, placing them in a parallel directory on the repository
clearly labelled.
3. The DDWG member will then communicate this blacklist update to the DDWG mailing list, and provide
the updated master list of blacklisted files.

### File checking

Files that are in holding to be placed on an official SuperDARN data repository shall first be
checked for the following:
1. File size is appropriate
2. File is not corrupt
3. DMAP records are consistent
4. File is not currently in the blacklist
5. File is not pre-commission data

The policy to handle failures 1 through 3 above is:
1. The file should be placed in a 'failed files' directory accessible to the users of the official 
SuperDARN data repository. 
2. The DDWG members responsible for those files will then be informed that their files have failed
one of the checks. 

If a file is currently blacklisted, or is from a pre-commissioning date, the policy is:
TODO: 

### Updating Files

TODO:

### Removing Files

TODO:

### Record-keeping/backups

TODO: What are the basic must-have records to keep, and how are those records backed up?
How are they easily searchable and is it possible to answer any reasonable question easily from
the records?

### Gap resolution

Gap resolution refers to the periodic human-involved act of categorizing any gaps in level 1 data 
across all SuperDARN radars. Normally this should be done on an annual basis. A member of the 
DDWG will generate a list of nominal level 1 data files that are not available on any of the 
official SuperDARN data repositories. The lists of data gaps are then sent to the DDWG members 
who are responsible for those radars. The members responsible will then respond 
with a statement for each gap, or the gaps as a whole, identifying which gaps are real (i.e. the 
radar was not operating or the data is known to be of poor quality) and which are not real (i.e. 
the radar was operating, producing good quality data, but it was never placed on the mirror for 
whatever reason). Then, the member will provide access to any data files that were 
gaps before, so they can be incorporated into the official SuperDARN data repositories.

## Reporting

### Annual Report

At the annual SuperDARN workshop, the DDWG chair or co-chair(s) or their representative should
present an update to the SuperDARN community. The basic information that should be included is:

* Any problems or roadblocks the DDWG encountered over the past year
* Any other events that occurred over the past year
* A summary of certain data statistics such as the quantity of data placed in repositories, 
blacklisted files, updated files, and a comparison with previous years’ statistics
* A summary of gap resolution activities
* A summary of any official SuperDARN mirror downtimes over the past year
* Any future work that will be performed

### Annual Meeting

At each annual SuperDARN workshop, there should be a meeting for the DDWG members to discuss current
issues, future work, and this charter. Minutes shall be taken and sent to the DDWG via the regular
communication channels outlined above. A summary of the meeting shall be reported to the SuperDARN
community at the end of the annual SuperDARN workshop.