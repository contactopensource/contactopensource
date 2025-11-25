#!/bin/sh
set -euf

rails generate scaffold \
    user \
    --force \
    --no-timestamps \

