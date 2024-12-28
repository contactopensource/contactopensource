#!/bin/sh
set -euf

cargo loco generate scaffold \
    access_assignment \
        access_agent_id:referencesNone \
        access_attribute_id:referencesNone \
    --force \
    --no-timestamps \

