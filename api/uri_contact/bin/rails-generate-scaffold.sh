#!/bin/sh
set -euf

rails generate scaffold \
    uri_contact \
    --force \
    --no-timestamps \

