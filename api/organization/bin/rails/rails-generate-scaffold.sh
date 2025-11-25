#!/bin/sh
set -euf

rails generate scaffold \
    organization \
    --force \
    --no-timestamps \

