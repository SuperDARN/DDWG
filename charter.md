# Charter of Data Distribution Working Group (DDWG)

This charter outlines the necessary information that the DDWG requires to operate effectively.

## Updates
| Date | Changes |
| --- | --- |
| November 2013 | Initial Charter creation |
| October 2018 | Hard drives no longer distributed regularly, BAS now distribution institution | 
| May 2020 | Members list updated, mailing list change, definitions & policies added |

## Definitions
 - IQDAT/BFIQ: Beamformed IQ data
 - RAWACF/DAT: Correlation data
 - Level 0 Data: IQDAT or BFIQ data
 - Level 1 Data: RAWACF or DAT data
 - WG: Working group
 - PI Institutions: Institutions that produce SuperDARN radar data adhering to the PI agreement
 - DSWG: Data Standards Working Group: <https://github.com/SuperDARN/dswg-published-docs>
 - DAWG: Data Analysis Working Group: TODO: link to some kind of page/charter/etc
 
## Institutions
 - BAS: British Antarctic Survey
 - USASK: University of Saskatchewan
 - VT : Virginia Tech
 - NIPR: National Institute of Polar Research
 - JHU/APL: Johns Hopkins University Applied Physics Laboratory
 - UAF: University of Alaska Fairbanks
 - IAPS/INAF: Institute for Space Astrophysics and Planetology 
 - BOM: Bureau of Meteorology
 - PRIC: Polar Research Institute of China
 - ISEE: Institute for Space-Earth Environmental Research
 - IRAP: Research Institute in Astrophysics and Planetology 
 - NICT: National Institute of Information and Communications Technology
 - DICE/UEC: University of Electro-Communications
 - SDU: Shandong University
 - UNIS: The University Centre in Svalbard
 - UKZN: University of KwaZulu-Natal
 
## Purpose

This WG is charged with maintaining the protocols for transferring Level 1 data 
files from PI institutions, first to holding institutions and 
ultimately to distribution institutions where they are merged, checked, catalogued and copied to 
servers for community access.

## Holding Institution(s)

The holding institution prior to October 1<sup>st</sup>, 2013 was JHU/APL. See Appendix A 
for a description of the system that was in place at JHU/APL.

The holding institution beginning October 1<sup>st</sup>, 2013 is Virginia Tech. 
See Appendix B for a description of the system in place at Virginia Tech.

An additional holding institution was put in place in 2016 at BAS, and the official 
announcement was made on January 24 2017. Note that BAS is also a distribution institution.

## Distribution Institution(s)

The distribution institutions are currently USASK and BAS. See Appendix C for a description
of the current system in place at USASK, and a brief description of the 
previous system. See Appendix D for a description of the current system in place at BAS.

## Membership

The current membership includes:

Responsibilty | Name | Institution | Radars
--- | --- | --- | ---
Chair | Kevin Krieger | USASK | sas, pgr, rkn, inv, cly
Member | Marci Detwiller | USASK | sas, pgr, rkn, inv, cly
Member | Marina Schmidt | USASK | sas, pgr, rkn, inv, cly
Member | Keith Kotyk | USASK | sas, pgr, rkn, inv, cly
Member | Kevin Sterne | VT | bks, kap, gbr, fhe, fhw
Member | Simon Shepherd | Dartmouth | cve, cvw
Member | Evan Thomas | Dartmouth | cve, cvw
Member | Akira Sessai Yukimatu | NIPR | sye, sys
Member | Jordan Wiker | JHU/APL | wal
Member | Enrico Simeoli | IAPS/INAF | dce, dcn
Member | Kehe Wang | BOM
Member | John Devlin | LaTrobe | tig, unw, bpk
Member | Jim Whittington | LaTrobe | tig, unw, bpk
Member | Mark Gentile | LaTrobe | tig, unw, bpk
Member | Andrew McDonald | LaTrobe | tig, unw, bpk
Member | Paul Breen | BAS | fir
Member | Tim Barnes | BAS | fir
Member | Bill Bristow | UAF/Penn State | sps, mcm, ade, adw, kod
Member | Jianjun Liu | PRIC | zho
Member | Hongqiao Hu | PRIC | zho
Member | Judy Stephenson | UKZN | san
Member | Tomoaki Hori | ISEE | hok, hkw
Member | Nozomu Nishitani | ISEE | hok, hkw
Member | Aurélie Marchaudon | IRAP | ker
Member | Tsutomu Nagatsuma | NICT | ksr
Member | Keisuke Hosokawa | DICE/UEC |
Member | Chris Thomas | Leicester | han, pyk, sto
Member | Tim Yeoman | Leicester | han, pyk, sto
Member | Qinghe Zhang | SDU
Member | Zanyang Xing | SDU
Member | Mikko Syrjäsuo| UNIS | lyr
Observer | Mike Ruohoniemi | VT
Observer | Kathryn McWilliams | USASK
Observer | Dieter Andre | USASK
Observer | Jean-Pierre St.Maurice | USASK
Observer | Federica Marcucci | IAPS/INAF 

## Communications

Communication shall primarily be done over email via the DDWG mailing list set up by Nozomu Nishitani,
maintained at Nagoya University. To send email to the list, send mail to <darn-ddwg@isee.nagoya-u.ac.jp>.
Previously, a mailing list set up by Julian Thornhill, maintained by Leicester University, was used. 
That list address was <darn-ddwg@ion.le.ac.uk>.

A person wishing to subscribe to the DDWG emailing list should contact the Chair 
(or co-Chairs) or the current PI institution’s member about subscribing to this list. 
Subscribing to the list should be only at the approval of the Chair (or co-Chairs) so that they 
are aware of an addition or change within a PI institution.

## Responsibilities

TODO: update this 

Chair/Co-Chair: Provide updates on the status of the SuperDARN data distribution system to the 
members of the DDWG. Operate and maintain the SuperDARN holding and Distribution institution 
systems. Track down gaps in data and resolve them, either by providing an explanation for why 
the data is missing, or retrieving it from the PI institution responsible if it is not a real gap.

Members responsible for providing data to the holding institution: Provide data in a timely and 
preferably automated manner to the holding institution(s), either by 'pushing' the data or by 
placing it in a holding area for the holding institution to 'pull'. 
Help with gap resolution when requested.

Members responsible for accessing data from mirrors: Set up and maintain a way of downloading 
data from the mirrors in a timely fashion for their PI institution. 
Provide feedback on the mirror setup.

Observers: Provide feedback or input on discussions.

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