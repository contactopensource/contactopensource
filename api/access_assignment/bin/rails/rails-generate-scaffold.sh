#!/bin/sh
set -euf

rails generate scaffold \
    access_assignment \
        access_agent_id:references \
        access_attribute_id:references \
    --force \
    --no-timestamps \

