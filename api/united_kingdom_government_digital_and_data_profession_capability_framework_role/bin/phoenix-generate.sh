#!/bin/sh
set -euf

mix phx.gen.html \
    None UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRole None \
        id:uuid:index \
        sign:string:index \
        lock_version:integerNone \
        created_at:timestamp:index \
        created_by:url:index \
        updated_at:timestamp:index \
        updated_by:url:index \
        deleted_at:timestamp:index \
        deleted_by:url:index \
        locale_id:locale.id:index \
        family_id:united_kingdom_government_digital_and_data_profession_capability_framework_role_family.idNone \
        name:stringNone \
        url:urlNone \
        description:stringNone \
        level_name:stringNone \
        level_description:stringNone \
        senior_civil_service_flag:booleanNone \
    --force \
    --no-timestamps \

