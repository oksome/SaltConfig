base:
    'roles:server':
        - match: grain
        - basics

    'roles:desktop':
        - match: grain
        - basics
        - local
        - desktop

    'roles:intercom':
        - match: grain
        - intercom
