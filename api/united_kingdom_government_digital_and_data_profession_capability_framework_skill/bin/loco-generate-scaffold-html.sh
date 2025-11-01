#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    united_kingdom_government_digital_and_data_profession_capability_framework_skill \
        id:uuid \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        retired_at:timestamp_utc_usec \
        retired_by:url \
        locale_code:string \
        tagging:string \
        name:string \
        url:url \
        description:string \
        level_1_description_as_markdown:markdown \
        level_1_description_as_html:html \
        level_2_description_as_markdown:markdown \
        level_2_description_as_html:html \
        level_3_description_as_markdown:html \
        level_3_description_as_html:html \
        level_4_description_as_markdown:html \
        level_4_description_as_html:html \
        roles_that_require_this_skill_as_markdown:html \
        roles_that_require_this_skill_as_html:html \

