base:
    'roles:server':
        - match: grain
        - basics

    'roles:desktop':
        - match: grain
        - basics
        - local
        - desktop
        - compile

    'roles:kde':
        - match: grain
        - kde

    'roles:developer':
        - developer

    'roles:intercom':
        - match: grain
        - intercom
