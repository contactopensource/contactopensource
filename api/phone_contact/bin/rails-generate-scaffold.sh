#!/bin/sh
set -euf

rails generate scaffold \
    phone_contact \
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
        label:text \
        number_text:text:index \
        e164_text:"string{15}":index \
        e164_country_code:"string{3}":index \
        e164_national_destination_code:"string{13}":index \
        e164_group_identification_code:"string{4}" \
        e164_trial_identification_code:"string{3}" \
        e164_subscriber_number:"string{14}" \
    --force \
    --no-timestamps \

