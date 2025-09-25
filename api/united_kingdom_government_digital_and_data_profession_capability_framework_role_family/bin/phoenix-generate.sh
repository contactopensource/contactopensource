#!/bin/sh
set -euf

mix phx.gen.html \
    None UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRoleFamily None \
    --force \
    --no-timestamps \

