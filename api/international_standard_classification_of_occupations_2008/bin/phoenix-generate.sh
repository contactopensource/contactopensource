#!/bin/sh
set -euf

mix phx.gen.html \
    Codes InternationalLaborOrganizationInternationalStandardClassificationOfOccupations None \
        group:string:index \
        code:string:index \
        title:string:index \
        definition:stringNone \
    --force \
    --no-timestamps \

