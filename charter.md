Charter of Data Distribution Working Group (DD-WG)

Working Group Purpose

This working group (WG) is charged with maintaining the protocols for transferring RAWACF and DAT files from the PI institutions, first to a holding institution (Virginia Tech) and ultimately to a distribution institution (University of Saskatchewan) where they are merged and copied onto hard drives for distribution. The cadence for distribution of the drives is every four months (Jan-Apr, May-August, September-December). This working group was created after the SuperDARN workshop in Moose Jaw, Saskatchewan in 2013. The group is also charged with maintaining an augmentation to the hard drive distribution, any networked SuperDARN Data Mirrors.

Holding Institution

The holding institution prior to October 1<sup>st</sup>, 2013 was JHU/APL. See Appendix A for a description of the system that was in place at JHU/APL.

The holding institution beginning October 1<sup>st</sup>, 2013 is Virginia Tech. See Appendix B for a description of the system in place at Virginia Tech.

Distribution Institution(s)

The distribution institution is the University of Saskatchewan. See Appendix C for a description of the current system in place at the University of Saskatchewan, and a brief description of the previous system.

Membership

The membership of the working group should consist of several types of members:

1.  Those responsible for providing data to the holding institution.
2.  Those responsible for accessing data from data mirrors to download to their PI institution.
3.  Those responsible for receiving hard drives from the four month distribution.
4.  Others who wish to observe.

The current membership includes:

Chair: Kevin Krieger University of Saskatchewan

Co-Chair: Kevin Sterne Virginia Tech

Simon ShepherdDartmouth

Akira Sessai YukimatuNIPR

Kehe WangIPS

Andrew McDonaldLaTrobe

Paul BreenBAS

Bill BristowUAF

Jef SpaletaUAF

Jianjun LiuPRIC

Judy StephensonDurban

Tomoaki HoriSTELAB

Nozomu NishitaniSTELAB

Aurélie MarchaudonIRAP/CNRS

Nigel WadeLeicester

Tsutomu NagatsumaNICT

Keisuke HosokawaDICE

Ethan MillerJHU/APL

Ermanno AmataIAPS-INAF

Tom KaneLaTrobe

Hong-Qiao HuPRIC

Xavier VallieresCNRS

Chris ThomasLeicester

Manabu KunitakeNICT

Observers:

Mike RuohoniemiVirginia Tech

Kathryn McWilliamsUniversity of Saskatchewan

Dieter AndreUniversity of Saskatchewan

Jean-Pierre St.MauriceUniversity of Saskatchewan

Communications

Communication shall primarily be done over email via the Data-Distribution Working-Group (Darn-ddwg) mailing list set up by Julian Thornhill, maintained by Leicester University. To send email to the list, send mail to <darn-ddwg@ion.le.ac.uk>.

A person wishing to subscribe to the Data Distribution emailing list should contact the Chair (or co-Chairs) or the current PI institution’s member about subscribing to this list. Subscribing to the list should be only at the approval of the Chair (or co-Chairs) so that they are aware of an addition or change within a PI institution.

Responsibilities

Chair/Co-Chair: Provide updates on the status of the SuperDARN data distribution system to the members of the ddwg. Operate and maintain the SuperDARN holding and Distribution institution systems. Track down gaps in data and resolve them, either by providing an explanation for why the data is missing, or retrieving it from the PI institution responsible if it is not a real gap.

Members responsible for providing data to the holding institution: Provide data in a timely and preferably automated manner to the holding institution, either by 'pushing' the data or by placing it in a holding area for the holding institution to 'pull'. Help with gap resolution when requested.

Members responsible for accessing data from mirrors: Set up and maintain a way of downloading data from the mirrors in a timely fashion for their PI institution. Provide feedback on the mirror setup.

Members responsible for receiving distributed hard drives: Make sure the hard drive received contains the data that it is labeled for, and is readable.

Observers: Provide feedback or input on discussions.

Immediate Action items

1.  An introduction email shall be sent out by the Chair/Co-Chair to the Darn-ddwg mailing list, with this charter.
2.  An email shall be sent out detailing the current status of data distribution, including the mirror.
3.  Documentation shall be done on the Primary SuperDARN Data Mirror.
4.  Discussion among all members should happen regarding the “Points for Consideration” below.

Points for Consideration

1.  Are there problems with accessing files from certain institutions?
2.  How do we become aware of, and deal with, gaps in the distribution?
3.  Have bad files been passed to the general distribution? Should these be identified and corrected, deleted, or somehow flagged? (Should be less of a problem after Oct. 1, 2013)
4.  How do we make rawacf files available on a next-day (or better) basis?
5.  Do we have issues with the amount of data and storage capacity?
6.  The files currently distributed by U Sas are apparently not identical to those that were provided by the PI institutions. Why is this, and is it a problem?
7.  Should the Data Mirror set up at U Sas eventually replace distribution of data by hard drives?
8.  How do we ensure that Virginia Tech has the most complete data archive? There are known gaps within the Virginia Tech data archive across several radars (April 29 – May 6, 2008; July 30, 2008; December 30, 2008)
9.  How do we ensure that much older data that is corrected by an institution is distributed throughout the SuperDARN community? For example, if a flaw is found in 2009 Blackstone data and it is corrected, how do we ensure the corrected data is distributed throughout the PI institutions?
10. Building upon \#4, how can the community quickly scrutinize/analyze data to ensure, at least at first glance, proper radar operation? If a days worth of data contains 10 return-cells per beam per hour, is the radar broken? Hopefully this will help keep faulty data from quickly being distributed and lessen the need for my \#2.
11. How do we process different/irregular file formats into the distribution? The University of Alaska Fairbanks radars have begun producing multi-channel data that cannot utilize the channel variable in the dmap header due to stereo-ops logic in the rst code that breaks. So, to keep things sensible, the channel information is being stored into the filename. As well, older radars still produce data in the old fit and dat file formats. Which do we use as a basis for converting to the new file format?
