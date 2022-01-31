# Charter of Data Distribution Working Group (DDWG)

This charter outlines the necessary information that the DDWG requires to operate effectively.

## Updates
| Date | Changes |
| --- | --- |
| November 2013 | Initial Charter creation |
| October 2018 | Hard drives no longer distributed regularly, BAS now distribution institution | 
| May 2020 | Members list updated, mailing list change, definitions, appendices & policies added |
| January 2021 | Members list updated, appendix C updated |
| April 2021 | Members list updated |
| July 2021 | Members list updated, list of distribution institutions updated (NSSC) |
| January 2022 | Members list updated, change of PI for ksr radar |

## Definitions
 - IQDAT/BFIQ: Beamformed IQ data
 - RAWACF/DAT: Correlation data
 - Level 0 Data: IQDAT or BFIQ data
 - Level 1 Data: RAWACF or DAT data
 - WG: Working group
 - PI Institutions: Institutions that produce SuperDARN radar data adhering to the PI agreement
 - DSWG: Data Standards Working Group: <https://github.com/SuperDARN/dswg-published-docs>
 - DAWG: Data Analysis Working Group: <https://github.com/SuperDARN/rst/wiki>
 
## Institutions
 - BAS: British Antarctic Survey
 - USASK: University of Saskatchewan
 - VT : Virginia Tech
 - NIPR: National Institute of Polar Research
 - JHU/APL: Johns Hopkins University Applied Physics Laboratory
 - UAF: University of Alaska Fairbanks
 - IAPS/INAF: Institute for Space Astrophysics and Planetology 
 - PRIC: Polar Research Institute of China
 - ISEE: Institute for Space-Earth Environmental Research
 - IRAP: Research Institute in Astrophysics and Planetology 
 - NICT: National Institute of Information and Communications Technology
 - UEC: University of Electro-Communications
 - SDU: Shandong University
 - NSSC-CAS: National Space Science Center, Chinese Academy of Sciences
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

The distribution institutions are currently USASK, BAS and NSSC. See Appendix C for a description
of the current system in place at USASK, and a brief description of the 
previous systems. See Appendix D for a description of the current system in place at BAS.
See Appendix E for a description of the current system in place at NSSC.

## Membership

The current membership includes:

Responsibilty | Name | Institution | Radars
--- | --- | --- | ---
Chair | Kevin Krieger | USASK | sas, pgr, rkn, inv, cly
Member | Marina Schmidt | USASK | sas, pgr, rkn, inv, cly
Member | Kevin Sterne | VT | bks, kap, gbr, fhe, fhw
Member | Simon Shepherd | Dartmouth | cve, cvw
Member | Evan Thomas | Dartmouth | cve, cvw
Member | Akira Sessai Yukimatu | NIPR | sye, sys
Member | Yuka Kadowaki | NIPR | sye, sys
Member | Jordan Wiker | JHU/APL | wal
Member | Enrico Simeoli | IAPS/INAF | dce, dcn
Member | John Devlin | LaTrobe | tig, unw, bpk
Member | Jim Whittington | LaTrobe | tig, unw, bpk
Member | Mark Gentile | LaTrobe | tig, unw, bpk
Member | Andrew McDonald | LaTrobe | tig, unw, bpk
Member | Paul Breen | BAS | fir
Member | Tim Barnes | BAS | fir
Member | Bill Bristow | UAF/Penn State | sps, mcm, ade, adw, kod, ksr
Member | Jianjun Liu | PRIC | zho
Member | Hongqiao Hu | PRIC | zho
Member | Judy Stephenson | UKZN | san
Member | Tomoaki Hori | ISEE | hok, hkw
Member | Nozomu Nishitani | ISEE | hok, hkw
Member | Aurélie Marchaudon | IRAP | ker
Member | Keisuke Hosokawa | UEC |
Member | Chris Thomas | Leicester | han, pyk
Member | Tim Yeoman | Leicester | han, pyk
Member | Adrian Grocott | Lancaster | sto
Member | Wei Wang | NSSC | jme
Member | Fuli Ma | NSSC | jme
Member | Mikko Syrjäsuo| UNIS | lyr
Member | Zanyang Xing | SDU
Observer | Qinghe Zhang | SDU
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

All member types have the following responsibilities in addition to those listed below:
1. Provide feedback and input on discussions.

Chair/Co-Chair(s): 
1. Provide updates on the status of the SuperDARN data distribution system to the members of the 
DDWG and the PIs. 
1. Host annual meetings.

Members who operate the SuperDARN holding and distribution institution systems: 
1. Maintain technical aspects of the data distribution system, including codebase and hardware. 
1. Regularly track down gaps in data and resolve them, either by providing an explanation for why
the data is missing, or retrieving it from the PI institution responsible if it is not a real gap.

Members responsible for providing data to the holding institution: 
1. Provide data in a timely and preferably automated manner to the holding institution(s), either 
by 'pushing' the data or by placing it in a holding area for the holding institution to 'pull'. 
1. Help with gap resolution when requested.

Members responsible for accessing data from mirrors: 
1. Set up and maintain a way of synchronizing data from the mirrors in a timely fashion for their 
PI institution. 
