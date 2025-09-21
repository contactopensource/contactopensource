#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Plan.PlanBudget \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:char \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:url \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:url \
    --attribute retired_at:timestamp_utc_usec \
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
    --attribute plan_id:plan.id \

mix ash.codegen create_plan_budget
mix ash.migrate
