# Basic utilities and config for all systems.

#Deployment:
#    pkg.installed:
#        - names:
#            - vim

/usr/local/share/ca-certificates/OKso_root_CA.crt:
    file.managed:
        - source: salt://keys/OKso_root_CA.crt
        - mode: 644
        - user: root
        - group: root

/home/okso/.ssh:
    file.directory:
        - mode: 700
        - user: okso
        - group: okso

/home/okso/.ssh/authorized_keys:
    file.managed:
        - source: salt://keys/OKso_ssh.pub
        - mode: 644
        - user: okso
        - group: okso
    
