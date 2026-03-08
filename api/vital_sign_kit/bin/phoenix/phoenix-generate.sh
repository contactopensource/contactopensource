#!/bin/sh
set -euf

mix phx.gen.html \
    None VitalSignKit None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:url:index \
        locale_code:string:index \
        tagging:string:index \
        blood-pressure-diastolic-as-mmhg:countNone \
        blood-pressure-systolic-as-mmhg:countNone \
        body-fat-as-percentage:percentNone \
        body-temperature-as-celcius:celciusNone \
        cholesterol-hdl-as-mmol-per-litre:countNone \
        cholesterol-ldl-as-mmol-per-litre:countNone \
        heart-rate-as-beats-per-minute:countNone \
        heart-rate-variability:percentNone \
        height-as-cm:countNone \
        respiratory-rate-as-breaths-per-minute:countNone \
        sleep-score-as-percent:percentNone \
        total-sleep-time-as-min-per-day:countNone \
        vo2-max-as-ml-per-kg-per-minute:countNone \
        waist-circumference-as-cm:countNone \
        weight-as-kg:countNone \
    --force \
    --no-timestamps \

