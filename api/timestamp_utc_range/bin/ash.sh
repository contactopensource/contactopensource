#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Basics.Timestamp UTC Range \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute start:timestamp_utc \
    --attribute stop:timestamp_utc \
    --attribute duration_as_seconds:count \

mix ash.codegen create_tag
mix ash.migrate
