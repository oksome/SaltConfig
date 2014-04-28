# Crucible is a container that can withstand very high temperatures 
# and is used for metal, glass, and pigment production as well as a 
# number of modern laboratory processes.

/opt/crucible:
    file.directory:
        - user: okso
        - group: okso
        - mode: 755
        - makedirs: True
        - recurse:
            - user
            - group

/opt/crucible/bin:
    file.directory

/opt/crucible/lib/python/2:
    file.directory:
        - makedirs: True
/opt/crucible/lib/python/3:
    file.directory:
        - makedirs: True
/opt/crucible/lib/python/any:
    file.directory:
        - makedirs: True

