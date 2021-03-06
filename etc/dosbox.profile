# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/dosbox.local

# Firejail profile for dosbox
noblacklist ~/.dosbox

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc

caps.drop all
netfilter
nogroups
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
shell none
tracelog

private-bin dosbox
private-dev
private-tmp
