# Frequently Asked Questions

## Why do Canadian files take two different paths to the Globus mirror?
This is done for several reasons:
1. This will act as a 'check' for files that are going through VT. If VT changes the files in any
way (either inadvertently or on purpose), then the automated data processes will catch this. 
2. Data transfers for Canadian data are done on a 2 hour cadence. This allows Canadian radar
files to appear on the Globus mirror within ~45 minutes of being produced at the radar site.

Please see [this summary](summary_data_transfers.md).

## Why are the BAS and Globus mirrors not synchronized?
The BAS server has been given rsync access to the Globus mirror. The BAS mirror does not make
certain checks for file inconsistencies that the Globus mirror does, which may be a reason
for some files being located on the BAS server that are not in the main distribution on the Globus
server.

## What checks are done on the files before they get to the mirror(s)?
There are a few basic checks done on the files for quality control. Please see the 
[Policies and Procedures](policies_procedures.md).

## How do I get access to SuperDARN data? 
There are currently two official ways to access SuperDARN data. 
The options are:
1. Access via scp, rsync or sftp with the British Antarctic Survey (BAS) mirror. 
See [this page](https://www.bas.ac.uk/project/superdarn/#data) 
1. Access via [Globus](https://www.globus.org/) with the University of Saskatchewan (USASK) mirror.
    1. Go to <https://www.globus.org/> and sign up. Globus is an environment for research data 
    management, and wraps `gridftp` to do fast, reliable parallel data transfers between endpoints.
    1. Go to <https://www.globus.org/globus-connect-personal> and get the `globusconnectpersonal` 
    software installed on your machine. This turns your machine into an endpoint if the 
    `globusconnectpersonal` software is running.
    1. Let Kevin Krieger know what your globus ID is to be invited to have read-only access the 
    SuperDARN endpoint (an endpoint is like a server in the context of Globus).
    
In addition to this, there is a utility python script so you can automate transfers using Globus.
Please see documentation and the script here: <https://github.com/SuperDARNCanada/globus>
    
## How can I see what data is available on the mirrors?
If you have access to Globus, you can download a listing of all the RAWACF files by navigating to 
the directory `/config/raw_hashes/`. This directory contains symlinks to the 
`/raw/YYYY/mm/YYYYmm.hashes` files which contain the `sha1sum` output for each file, conveniently 
located in one place. The `YYYYmm.hashes` files are not guaranteed to be sorted in any meaningful way.

If you want to see the equivalent file listing for DAT files, just navigate to `/config/dat_hashes/`.
But NOTE that these files are named in the same way, so for a brief few months where there were both
RAWACF and DAT files being produced, there will be hash files with the same name `YYYYmm.hashes`. Due
to this, it is suggested to download these files into different directories. 

If you have access to the BAS mirror, you can download a listing of all files using the 
[API](https://api.bas.ac.uk/superdarn/mirror/v3/).

## Why can't I find data for [Insert date here]?
There are a multitude of reasons why you might not find data for a specific date or range of dates.
1. The radar was not operating at that time
1. The radar data was blocked for that date
1. The radar data failed one of the basic checks
1. The radar data exists somewhere, but hasn't been uploaded yet - 
this may be due to slow internet transfers, files being transferred by boat from Antarctica,
recent files that are working their way through the data management pipeline, or some other circumstance.

In order to narrow down which one of these reasons is true, you can search the 'blocklist' and the
'failed' list for the files. If the files are not blocked, or didn't fail a check, then please 
raise this as an issue on the DDWG github [issue](https://github.com/SuperDARN/DDWG/issues) page,
and/or send mail to the DDWG mailing list <darn-ddwg@isee.nagoya-u.ac.jp>.

## How much data does SuperDARN have?
Currently (202011) there is about 42 TB of RAWACF data and 2.2 TB of DAT data in the main distribution.
This information is gathered from the output of the linux command `du` on `cedar.computecanada.ca`.

SuperDARN began producing data on September 14 1993 from three radars. Today, the network has 
~36 radars. Data is nominally produced continuously, 24/7/365. 

## What would the ideal mirror setup look like for SuperDARN?
I believe that the ideal situation would involve every radar sending 2 hour files 12 times per day
directly to Globus. This can be done easily with a specific shared directory for each institution. 
Then, every two hours, a script will run on the server to add those files to the repository.

For those radars that do not have good enough network access, the upload cadence may need to be 
less frequent.