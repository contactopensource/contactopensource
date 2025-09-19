#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.System.SystemUser \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

