#!/bin/bash

set -e

if [ ! -f /opt/mezzanine_website/dev.db ]; then
    /usr/bin/python /opt/mezzanine_website/manage.py createdb --noinput
fi

exec /usr/bin/python /opt/mezzanine_website/manage.py runserver 0.0.0.0:8000
