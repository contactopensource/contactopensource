#!/bin/sh
set -euf

rails generate scaffold \
    system_user \
    --force \
    --no-timestamps \

