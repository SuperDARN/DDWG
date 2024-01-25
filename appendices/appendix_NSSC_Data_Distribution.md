# Appendix E - NSSC Data Distribution

For the NSSC mirror syncing, the hashes are compared first to see if there's any updated files to sync.
If a different hash value is detected between two mirrors' hash files, the data file is verified, 
if there are no errors with the file, it is copied to the NSSC mirror and the local hash files are then updated. 
Access to the distribution is via FTP or rsync.

In order to simplify users to download data in batches, SuperDARN NSSC mirror has opened FTP service for users. The way of how to connect the FTP server shown below: 
1.	FTP connection parameter
ftp URL:					superdarn.nssdc.ac.cn
Port: 					20021
Connection type:			FTP using Explicit SSL
Data connection mode:	passive mode（PASV）

3.	Connection example
Take FlashFXP as an example. The configuration is as follows:
 ![image](https://github.com/SuperDARN/DDWG/assets/12843089/f70d205c-93b9-44dd-8981-07fe06202912)

4.	Others
 ![image](https://github.com/SuperDARN/DDWG/assets/12843089/8537ea7f-8f3c-4f36-97dd-697c51f2bba6)

The interface of success connected is show in the picture above.
The FTP service of this mirror station only provides the function of view and download data files, and does not support the function of modify or upload data files.
If you encounter any problems, could contact with the Chair Ma Fuli (mafuli007@nssc.ac.cn)
