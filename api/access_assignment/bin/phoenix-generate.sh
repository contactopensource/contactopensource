#!/bin/sh
set -euf

mix phx.gen.html \
    Access Assignment access_assignments \
        access_agent_id:referencesNone \
        access_attribute_id:referencesNone \
    --force \
    --no-timestamps \

