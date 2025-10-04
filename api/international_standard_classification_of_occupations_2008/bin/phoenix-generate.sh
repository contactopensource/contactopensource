#!/bin/sh
set -euf

mix phx.gen.html \
    Codes InternationalLaborOrganizationInternationalStandardClassificationOfOccupations2008 None \
        code:string:index \
        name:string:index \
        definition:stringNone \
    --force \
    --no-timestamps \

