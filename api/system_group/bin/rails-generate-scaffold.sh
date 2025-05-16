#!/bin/sh
set -euf

rails generate scaffold \
    system_group \
    --force \
    --no-timestamps \

