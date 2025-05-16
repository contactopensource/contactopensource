#!/bin/sh
set -euf

rails generate scaffold \
    access_assignment \
        access_agent_id:access_agent.idNone \
        access_attribute_id:access_attribute.idNone \
    --force \
    --no-timestamps \

