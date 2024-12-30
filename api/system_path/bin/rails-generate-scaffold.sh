#!/bin/sh
set -euf

cargo loco generate scaffold \
    system_path \
    --force \
    --no-timestamps \

