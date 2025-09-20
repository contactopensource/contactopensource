#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.PostalContact \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute lock_version:integer \
    --attribute created_at:timestamp \
    --attribute created_by:url \
    --attribute updated_at:timestamp \
    --attribute updated_by:url \
    --attribute retired_at:timestamp \
    --attribute retired_by:url \
    --attribute locale_id:locale.id \
    --attribute title:string \
    --attribute subtitle:string \
    --attribute summary:string \
    --attribute description:text \
    --attribute disambiguation:text \
    --attribute avatar_image_400x400_url:url \
    --attribute avatar_image_400x400_alt:url \
    --attribute main_image_1080x1080_url:url \
    --attribute main_image_1080x1080_alt:text \
    --attribute main_image_1920x1080_url:url \
    --attribute main_image_1920x1080_alt:text \
    --attribute main_image_1080x1920_url:url \
    --attribute main_image_1080x1920_alt:text \
    --attribute emoji:text \
    --attribute star_count:integer \
    --attribute quick_response_code_id:quick_response_code.id \
    --attribute universal_product_code_id:universal_product_code.id \
    --attribute freeform:text \
    --attribute country_text:text \
    --attribute country_subdivision_text:text \
    --attribute district_text:text \
    --attribute locality_text:text \
    --attribute locality_subdivision_text:text \
    --attribute neighborhood_text:text \
    --attribute postal_code_text:text \
    --attribute street_address_text:text \
    --attribute premise_address_text:text \
    --attribute global_location_number_text:text \

mix ash.codegen create_postal_contact
mix ash.migrate
