#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    united_kingdom_government_digital_and_data_profession_capability_framework_role \
        id:uuid \
        sign:string \
        lock_version:integer \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        deleted_at:timestamp \
        deleted_by:url \
        locale_id:references \
        family_id:references:united_kingdom_government_digital_and_data_profession_capability_framework_role_family \
        name:string \
        url:url \
        description:string \
        level_name:string \
        level_description:string \
        senior_civil_service_flag:boolean \

