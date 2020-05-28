# Appendix D - BAS Data Distribution

The BAS mirror node was officially released for community use on January 24 2017.
The BAS data distribution documentation can be found here: 
<https://www.bas.ac.uk/project/superdarn/#data>

Here is the release email sent out by data manager Paul Breen: 

```
Hello list,

As I'm sure you're all aware, we at BAS have been developing a SuperDARN
data distribution mirror node (bslsuperdarnb.nerc-bas.ac.uk), in
addition to that which USASK operate.

We are pleased to announce that the BAS mirror node is now suitable for
general use within the SuperDARN community, so please feel free to use it!

We have set up identical user accounts to those that currently exist on
the USASK mirror node, hence you can connect to the BAS mirror node with
the same login name and ssh key.  We support rsync [0], scp, and sftp
for data transfer.  Each account allows ssh login (via ssh keys only -
no passwords), is isolated from every other account, and provides
read-only access to the mirror data.

The directory structure of the BAS mirror node is identical to that of
USASK, and we also generate monthly hash files, as well as the
master.hashes file [1].

Best regards,
Paul.

[0] Regarding rsync transfers: if you sync against multiple year
directories (e.g., /sddata/raw/), then you will need to add the
--copy-links option to your rsync invocation.  This is because many of
the year directories are in fact symlinks to other disk volumes, thus
adding the above option will treat them as real directories and descend
into them when searching for files to transfer.

[1] Regarding the hashes files: it is probable that the BAS monthly hash
files won't be identical to those at USASK.  The individual hash records
should be identical, but the order in which they appear in the monthly
hash file may well be different.  This is a consequence of the fact that
both BAS and USASK independently generate the hashes as the data come in
from the various radar institutes.  Consequently, this means that the
USASK, and BAS, master.hashes files will differ.  It shouldn't be too
onerous to keep separate copies of these two distinct master.hashes
files, as they are not large.
```