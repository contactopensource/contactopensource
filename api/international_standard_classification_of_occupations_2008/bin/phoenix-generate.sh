#!/bin/sh
set -euf

mix phx.gen.html \
    Codes InternationalStandard_ClassificationOfOccupations2008 None \
        group:string:index \
        code:string:index \
        title:string:index \
        definition:stringNone \
    --force \
    --no-timestamps \

