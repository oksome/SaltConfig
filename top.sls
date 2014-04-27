base:
    'roles:server':
        - match: grain
        - basics

    'roles:devserver':
        - match: grain
        - basics
        - compile

    'roles:desktop':
        - match: grain
        - basics
        - local
        - desktop
        - compile
        - developer

    'roles:kde':
        - match: grain
        - kde

    'roles:intercom':
        - match: grain
        - intercom

    'roles:services':
        - match: grain
        - chatserver
