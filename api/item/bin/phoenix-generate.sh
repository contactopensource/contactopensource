#!/bin/sh
set -euf

mix phx.gen.html \
    None Item None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        title:"string{50}":index \
        subtitle:"string{50}":index \
        summary:stringNone \
        description:textNone \
        disambiguation:textNone \
        image_1024x1024_url:urlNone \
        image_1024x1024_alt:textNone \
        emoji:textNone \
        star_count:integerNone \
        geographic_point_id:geographic_point.idNone \
        color_point_rgb_with_unit_interval_id:color_point_rgb_with_unit_interval.idNone \
        quick_response_code_id:quick_response_code.idNone \
        stock_keeping_unit_id:stock_keeping_unit.idNone \
        universal_product_code_id:universal_product_code.idNone \
    --force \
    --no-timestamps \

