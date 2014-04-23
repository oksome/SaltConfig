# Basic utilities and config for all systems.

Prosody:
    pkg.installed:
        - names:
            - prosody

#/root/.vimrc:
#    file.managed:
#        - source: salt://etc/vimrc
#        - mode: 644
#        - user: root
#        - group: root

