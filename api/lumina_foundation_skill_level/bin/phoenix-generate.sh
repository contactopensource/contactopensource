#!/bin/sh
set -euf

mix phx.gen.html \
    Codes LuminaFoundationSkillLevel None \
        number:integer:index \
        label:string:index \
        description:stringNone \
    --force \
    --no-timestamps \

