## Quality Control

Defining the scope of responsibility for the DDWG regarding quality control is important.
The DDWG should be responsible for ensuring that files can be read and accessed properly. (... with 
agreed-upon software tools?).
The DDWG is *NOT RESPONSIBLE* for the scientific quality of the data itself.
That responsibility falls within the another working group's scope. TODO: Which WG?

### Raising Issues

Anyone can raise issues. The order of preference for raising issues is:
 1. Via the github repository here: <https://github.com/SuperDARN/DDWG/issues/new/choose>
 2. Via an email to the DDWG mailing list: <darn-ddwg@isee.nagoya-u.ac.jp>
 3. Via an email to the chair or co-chair(s)

### Blacklisting

Blacklisting refers to the listing of specific SuperDARN level 1 data that should not be distributed
to the SuperDARN community via the official SuperDARN data repositories. A file may be blacklisted
for any number of reasons.

The blacklist of SuperDARN files shall be accessible on a publicly visible website, in 
human-readable text file format. All files that are part of the blacklist should have context for 
their blacklisting in another text file in the same location (i.e. a README file).

The procedure for blacklisting a set of files is:
1. A PI, data manager, DDWG member, etc, will raise an issue outlining certain data files, 
recommending them to be blacklisted.
1. Consensus should be reached amongst an expert panel about whether the files should be blacklisted
1. The DDWG member(s) responsible for maintaining the official SuperDARN data repositories will 
remove the list of files from the repository, placing them in a parallel directory on the repository
that is clearly labelled (i.e. 'deletions')
1. The DDWG member will then communicate this blacklist update to the DDWG mailing list, and provide
the updated master list of blacklisted files along with the context for blacklisting of the files.

### File checking

Files that are in holding to be placed on an official SuperDARN data repository shall first be
checked for the following:
1. File size is appropriate
1. File is not corrupt
1. DMAP records are consistent

The policy to handle a failure in the checks above is:
1. The file should be placed in a 'failed files' directory accessible to the users of the official 
SuperDARN data repository.
1. The DDWG member(s) responsible for those files will then be informed that their files have failed
one of the checks, and they will be asked for a file that passes all checks if available.
1. If a version of the file exists that passes the checks, then follow the "Updating Files" policy

In addition, the following checks shall be done on the files:
1. File is not currently in the blacklist
1. File is not pre-commission data

If a file is currently blacklisted, or is from a pre-commissioning date, the policy is:
TODO: (If file is already blacklisted or pre-commission data and exists somewhere parallel to the
distribution, then just delete, otherwise place in a directory parallel to the main distribution?)

### Updating Files

If a file needs to be updated, the policy is:
1. Remove the file from the distribution's hash file first
1. Move the old file to a directory in parallel with the main distribution
1. Upload the new file, updating the hash file in the process
1. Inform the DDWG via the mailing list with context for the update

### Addition of old Files

If files older than TODO days are placed on the SuperDARN data repositories, the policy is:
1. TODO (Inform the DDWG mailing list? Context for why the old files are now being placed in 
repositories?)

### Removing Files

If a file needs to be removed from the main distribution, the policy is:
1. Remove the file from the distribution's hash file first
1. Move the file to a directory in parallel with the main distribution
1. Inform the DDWG via the mailing list with context for the update

### Record-keeping/backups

TODO: (What are the basic must-have records to keep, and how are those records backed up?
How are they easily searchable and is it possible to answer any reasonable question easily from
the records?)

### Gap resolution

Gap resolution refers to the periodic human-involved act of categorizing any gaps in level 1 data 
across all SuperDARN radars. Normally this should be done on an annual basis. The procedure is:
1. A member of the DDWG will generate a list of nominal level 1 data files that are not available 
on any of the official SuperDARN data repositories. 
1. The lists of data gaps are sent to the DDWG members who are responsible for those radars. 
1. The members responsible will then respond with a statement for each gap, or the gaps as a whole, 
identifying which gaps are real (i.e. the radar was not operating or the data is known to be of 
poor quality) and which are not real (i.e. the radar was operating, producing good quality data, 
but it was never placed on the mirror for whatever reason). 
1. The member will provide access to any data files that were gaps before.
1. The files will be incorporated into the official SuperDARN data repositories.

## Reporting

### Annual Report

At the annual SuperDARN workshop, the DDWG chair or co-chair(s) or their representative should
present an update to the SuperDARN community. The basic information that should be included is:

* Any problems or roadblocks the DDWG encountered over the past year
* Any major or noteworthy events that occurred over the past year
* A summary of certain data statistics such as the quantity of data placed in repositories, 
blacklisted files, updated files, and a comparison with previous years’ statistics
* A summary of gap resolution activities
* A summary of any official SuperDARN mirror downtimes over the past year
* Any future work that will be performed

### Annual Meeting

At each annual SuperDARN workshop, there should be a meeting for the DDWG members to discuss current
issues, future work, the charter, and these policies and procedures. Minutes shall be taken and 
sent to the DDWG via the regular communication channels. A summary of the meeting shall be reported 
to the SuperDARN community at the end of the annual SuperDARN workshop.

### Quarterly Meetings

TODO: (3 more virtual meetings a year?)