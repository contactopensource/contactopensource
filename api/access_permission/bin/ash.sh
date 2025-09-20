#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Access.AccessPermission \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute access_attribute_it:access_attribute.id \
    --attribute access_operation_id:access_operation.id \

mix ash.codegen create_access_permission
mix ash.migrate
