#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Access.AccessAssignment \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute access_agent_id:access_agent.id \
    --attribute access_attribute_id:access_attribute.id \

