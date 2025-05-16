#!/bin/sh
set -euf

rails generate scaffold \
    system_proc \
    --force \
    --no-timestamps \

