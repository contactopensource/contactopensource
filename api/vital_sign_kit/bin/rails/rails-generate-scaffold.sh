#!/bin/sh
set -euf

rails generate scaffold \
    vital_sign_kit \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        blood-pressure-diastolic-as-mmhg:count \
        blood-pressure-systolic-as-mmhg:count \
        body-fat-as-percentage:percent \
        body-temperature-as-celcius:celcius \
        cholesterol-hdl-as-mmol-per-litre:count \
        cholesterol-ldl-as-mmol-per-litre:count \
        heart-rate-as-beats-per-minute:count \
        heart-rate-variability:percent \
        height-as-cm:count \
        respiratory-rate-as-breaths-per-minute:count \
        sleep-score-as-percent:percent \
        total-sleep-time-as-min-per-day:count \
        vo2-max-as-ml-per-kg-per-minute:count \
        waist-circumference-as-cm:count \
        weight-as-kg:count \
    --force \
    --no-timestamps \

