#!/bin/sh
set -euf

rails generate scaffold \
    international_standard_book_number \
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
        image_1024x1024_url:text \
        image_1024x1024_alt:text \
        emoji:text \
        star_count:integer \
        code:"string{13}":index \
        prefix_element:"string{13}" \
        registration_group:digit(5) \
        registrant:"string{13}" \
        publication:"string{13}" \
        check_digit:digit(1) \
    --force \
    --no-timestamps \

