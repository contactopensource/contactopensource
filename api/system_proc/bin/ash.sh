#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.System.SystemProc \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_system_proc
mix ash.migrate
