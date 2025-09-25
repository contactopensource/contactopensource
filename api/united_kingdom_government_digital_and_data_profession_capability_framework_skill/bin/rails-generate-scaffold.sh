#!/bin/sh
set -euf

rails generate scaffold \
    united_kingdom_government_digital_and_data_profession_capability_framework_skill \
        sign:string:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
        name:string \
        url:text \
        description:string \
        level_1_as_markdown:markdown \
        level_1_as_html:html \
        level_2_as_markdown:markdown \
        level_2_as_html:html \
        level_3_as_markdown:html \
        level_3_as_html:html \
        level_4_as_markdown:html \
        level_4_as_html:html \
        roles_that_require_this_skill_as_markdown:html \
        roles_that_require_this_skill_as_html:html \
    --force \
    --no-timestamps \

