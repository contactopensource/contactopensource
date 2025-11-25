#!/bin/sh
set -euf

rails generate scaffold \
    system_path \
    --force \
    --no-timestamps \

