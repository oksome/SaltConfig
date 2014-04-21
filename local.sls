# Utilities and config for local systems (physical access).

PowerManagement:
    pkg.installed:
        - names:
            - pm-utils
            - sudo

/etc/sudoers.d/power:
    file.managed:
        - source:
            - salt://etc/sudoers.d/power
        - user: root
        - group: root
        - mode: 644

power:
    group.present

usermod -a -G power okso:
    cmd.run

