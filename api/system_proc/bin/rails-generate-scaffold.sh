#!/bin/sh
set -euf

cargo loco generate scaffold \
    system_proc \
    --force \
    --no-timestamps \

