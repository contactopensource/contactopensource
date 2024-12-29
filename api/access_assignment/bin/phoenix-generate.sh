#!/bin/sh
set -euf

mix phx.gen.html \
    Access Assignment access_assignments \
        access_agent_id:access_agent.idNone \
        access_attribute_id:access_attribute.idNone \
    --force \
    --no-timestamps \

