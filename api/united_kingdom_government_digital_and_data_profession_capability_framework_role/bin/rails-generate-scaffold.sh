#!/bin/sh
set -euf

rails generate scaffold \
    united_kingdom_government_digital_and_data_profession_capability_framework_role \
    --force \
    --no-timestamps \

