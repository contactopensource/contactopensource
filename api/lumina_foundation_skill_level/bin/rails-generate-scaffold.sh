#!/bin/sh
set -euf

rails generate scaffold \
    lumina_foundation_skill_level \
        number:integer:index \
        label:string:index \
        description:string \
    --force \
    --no-timestamps \

