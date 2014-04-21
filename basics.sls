# Basic utilities and config for all systems.

Networking:
    pkg.installed:
        - names:
            - curl
            - wget
            - screen

Deployment:
    pkg.installed:
        - names:
            - vim
            - git

/home/okso/.vimrc:
    file.managed:
        - source: salt://etc/vimrc
        - mode: 644
        - user: okso
        - group: okso

/root/.vimrc:
    file.managed:
        - source: salt://etc/vimrc
        - mode: 644
        - user: root
        - group: root

