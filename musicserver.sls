# Basic utilities and config for all systems.

MPD:
    pkg.installed:
        - names:
            - mpd
            - mpc

#/home/okso/.vimrc:
#    file.managed:
#        - source: salt://etc/vimrc
#        - mode: 644
#        - user: okso
#        - group: okso

