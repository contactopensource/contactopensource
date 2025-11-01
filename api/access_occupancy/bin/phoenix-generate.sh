#!/bin/sh
set -euf

mix phx.gen.html \
    Access AccessOccupancy None \
        access_tenant_id:referencesNone \
        access_agent_id:referencesNone \
    --force \
    --no-timestamps \

