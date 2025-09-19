#!/bin/sh
set -euf

rails generate scaffold \
    international_standard_identifier_for_libraries_and_related_organization \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
        retired_by:text \
        locale_id:references \
        title:"string{50}":index \
        subtitle:"string{50}":index \
        summary:string \
        description:text \
        disambiguation:text \
        image_1080x1080_url:text \
        image_1080x1080_alt:text \
        emoji:text \
        star_count:integer \
        key:varchar(16):index \
        prefix:varchar(14):index \
        suffix:varchar(14):index \
    --force \
    --no-timestamps \

