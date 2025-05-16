#!/bin/sh
set -euf

rails generate scaffold \
    access_tenant \
    --force \
    --no-timestamps \

