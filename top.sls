base:
    'roles:server':
        - match: grain
        - basics

    'roles:devserver':
        - match: grain
        - basics
        - compile

    'roles:musicserver':
        - match: grain
        - basics
        - musicserver

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

    'roles:services':
        - match: grain
        - chatserver
