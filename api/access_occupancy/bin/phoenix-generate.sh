#!/bin/sh
set -euf

mix phx.gen.html \
    Access None None \
        access_tenant_it:access_tenant.idNone \
        access_agent_id:access_agent.idNone \
    --force \
    --no-timestamps \

