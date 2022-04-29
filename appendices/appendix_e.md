# Appendix E - NSSC Data Distribution

For the NSSC mirror syncing, the hashes are compared first to see if there's any updated files to sync.
If a different hash value is detected between two mirrors' hash files, the data file is verified, 
if there are no errors with the file, it is copied to the NSSC mirror and the local hash files are then updated. 
Access to the distribution is via FTP or rsync.