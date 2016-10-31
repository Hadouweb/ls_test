#
# com.apple.corecdp.osx.asl
# CoreCDP
#

# Redirect all messages using the facilities "com.apple.corecdp.log.file"

? [= Facility com.apple.corecdp.log.file] claim

? [= Facility com.apple.corecdp.log.file] file /var/log/Accounts/cdp.log rotate=local-basic compress uid=501 gid=501 file_max=10M all_max=100M ttl=3 basestamp symlink

# Specify creation rules for our log directory.
> /var/log/Accounts mode=0755
