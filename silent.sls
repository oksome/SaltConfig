# Optimizations for silent systems systems (root on flash memory, lots of RAM, suspend disks)



hdparm -S 24 /dev/sda:
    cmd.run:
        - unless: hdparm -C /dev/sda | grep standby

hdparm -S 24 /dev/sdb:
    cmd.run:
        - unless: hdparm -C /dev/sdb | grep standby

/tmp:
    mount.mounted:
        - device: tmpfs
        - fstype: tmpfs
        - mkmnt: False
        - opts:
            - size=1G

/var/tmp:
    mount.mounted:
        - device: tmpfs
        - fstype: tmpfs
        - mkmnt: False
        - opts:
            - size=256m

# RAM cache 

aufs-tools:
    pkg.installed

#/tmp/foorw:
#    file.directory:
#        - user: okso
#        - group: okso
#        - mode: 755
#        - makedirs: True
#
#/tmp/fooro:
#    file.directory:
#        - user: okso
#        - group: okso
#        - mode: 755
#        - makedirs: True
#
#/tmp/union:
#    mount.mounted:
#        - device: none
#        - fstype: aufs
#        - mkmnt: True
#        - opts:
#            - br=/tmp/foorw=rw:/tmp/fooro=ro,udba=reval
