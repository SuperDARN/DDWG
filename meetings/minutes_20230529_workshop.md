# DDWG meeting minutes: May 29 2023 South Africa workshop

 Day    | Date        | Location               | Next Meeting
|--------|-------------|------------------------|---|
| Monday | May 29 2023 | South Africa Sani Pass | TBD |

## Summary
The meeting was held from ~15:00 until 17:00 local time May 29th 2023. 
Discussion mostly revolved around discrepancies between mirrors, and
what type of policy should be adopted surrounding data quality checks.
An update was given at the beginning regarding the action items from the
virtual meeting on May 17th.

## Action items from the discussions:

1. KKr will send out/make available the lists of file differences that are generated monthly between
the USASK and BAS/NSSC mirrors.
2. DDWG needs to do some research on the data checking with pydarnio, what is being checked
3. DDWG should collate and make available information about how each mirror checks files
4. The PIs need to discuss the possibility of adding other data products to distribution, like sounding files that have no other home. 

## DDWG Discussion topics

### File quality checks

- Need common method of checking. BAS cannot do python.
- python is last step in test path
- Checks are Bzip2 → size → existence → hash
- Some data is sent to two mirrors
- total failed files is somewhere around 600 [*Note the actual number is right now 1982], however, file differences are closer to 12,000 
- why do files fail? fails need logs 
- local data volumes overload, want warning 
- have direct to BAS radars do checks before uploading? Is this a possibility? 
- is there a tool to clean bad records? 
- pydarnio has better, more complete checks than backscatter with accessible messages 
- checks were implemented due to bad files failing mapfile generation
- can files always be added then tagged for repairs since some users may want that data? No single PI should decide what goes into distribution
- can files be tested if visually looks fine? Do you trust a file if the dmap format is not consistent? 
- Failed files go in a diff dir on usask mirror currently, so they are accessible to those who want to access them 
- We only want to distribute quality data
- Design a minimum criteria for quality checks
- if a fitacf-file can be made that's enough
- Where is the burden of truth? on excluder or includer? 
- most common issue is timestamp from raw acf propagates to maps
- is it okay to remove single records? Is there a tool for this?
- human readable error messages would be best
- want to be absolutely certain the data is good but it should be up to the user
- what percentage is removed? 0.097%
- who is responsible to fix a file? 
- often this problems come from local technical issues, every radar has problems
- recheck failed files without backscatter 
- have failed files synced to others 
- very few people care
- is there an RST test program? nobody knows for sure, no example given 
- pydarnio check were not written for the purpose of data mirror validation 
- Canadian funding requires data quality (FAIR)

### Bistatic files from CV
- changed comment buffer and CPID 
- wrote program to Fix. Believes it is due diligence.
- these corrections need to be done manually on each mirror after Paul/BAS updates them

### Dataflow diagram
- needs to be put on github
- no gaurentee it is correct

### Sounding files
- currently on google drive to distribute
- past data has been deleted due to PI not respecting it, in distribution we cannot lose it
- it is small files, can just add a directory for it
- no objections to adding sounding data 

### storage limitations
- suggest each radar uploads data to Zenodo [50GB limit per upload], an api is available for automation. 
- quick math is soon 100 TB / year if we start producing multiple widebeam/multifreq data
- other services also exist
- number of DOI is irrelevant, for publishing many DOI can be packaged into one (like Alex's use of FRDR data)