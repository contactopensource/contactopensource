#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Codes.LuminaFoundationSkillLevel \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute number:integer \
    --attribute label:string \
    --attribute description:string \

