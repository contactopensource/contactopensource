#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    lumina_foundation_skill_level \
        number:integer \
        label:string \
        description:string \

