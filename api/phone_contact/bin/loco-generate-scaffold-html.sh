#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    phone_contact \
        id:uuid \
        lock_version:int \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        retired_at:timestamp \
        retired_by:url \
        locale_id:references \
        title:"string{50}" \
        subtitle:"string{50}" \
        summary:string \
        description:text \
        disambiguation:text \
        image_1024x1024_url:url \
        image_1024x1024_alt:text \
        emoji:text \
        star_count:integer \
        label:text \
        number_text:text \
        e164_text:"string{15}" \
        e164_country_code:"string{3}" \
        e164_national_destination_code:"string{13}" \
        e164_group_identification_code:"string{4}" \
        e164_trial_identification_code:"string{3}" \
        e164_subscriber_number:"string{14}" \

