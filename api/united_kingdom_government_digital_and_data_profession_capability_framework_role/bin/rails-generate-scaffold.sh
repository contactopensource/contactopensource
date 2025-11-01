#!/bin/sh
set -euf

rails generate scaffold \
    united_kingdom_government_digital_and_data_profession_capability_framework_role \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        family_id:references:index \
        name:string \
        url:text \
        description_as_markdown:markdown \
        level_name:string \
        level_description_as_markdown:markdown \
        senior_civil_service_flag:boolean \
    --force \
    --no-timestamps \

