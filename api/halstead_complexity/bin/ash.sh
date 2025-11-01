#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.HalsteadComplexity \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:text \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:text \
    --attribute retired_at:timestamp_utc_usec \
    --attribute retired_by:text \
    --attribute locale_code:string \
    --attribute tagging:string \
    --attribute volume_actual:numeric \
    --attribute volume_target:numeric \
    --attribute volume_ratio:numeric \
    --attribute volume_unit:text \
    --attribute volume_description:text \
    --attribute difficulty_actual:numeric \
    --attribute difficulty_target:numeric \
    --attribute difficulty_ratio:numeric \
    --attribute difficulty_unit:text \
    --attribute difficulty_description:text \
    --attribute effort_actual:numeric \
    --attribute effort_target:numeric \
    --attribute effort_ratio:numeric \
    --attribute effort_unit:numeric \
    --attribute effort_description:numeric \

mix ash.codegen create_halstead_complexitys
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_halstead_complexitys.exs

mkdir -p lib/my_app_web/live/halstead_complexitys
touch lib/my_app_web/live/halstead_complexitys/form_live.ex
touch lib/my_app_web/live/halstead_complexitys/index_live.ex
touch lib/my_app_web/live/halstead_complexitys/show_live.ex

mkdir -p test/my_app_web/live/halstead_complexitys
touch test/my_app_web/live/halstead_complexitys/form_live.ex
touch test/my_app_web/live/halstead_complexitys/index_live.ex
touch test/my_app_web/live/halstead_complexitys/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/halstead_complexitys", HalsteadComplexitys.IndexLive
live "/halstead_complexitys/new", HalsteadComplexitys.FormLive, :new
live "/halstead_complexitys/:id", HalsteadComplexitys.ShowLive
live "/halstead_complexitys/:id/edit", HalsteadComplexitys.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/halstead_complexity.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
