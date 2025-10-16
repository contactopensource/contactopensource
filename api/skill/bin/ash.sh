#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Works.skills \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:text \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:text \
    --attribute deleted_at:timestamp_utc_usec \
    --attribute deleted_by:text \
    --attribute locale_code:string \
    --attribute tagging:string \
    --attribute name:string \
    --attribute subname:string \
    --attribute summary:string \
    --attribute description:text \
    --attribute disambiguation:text \
    --attribute sign:string \
    --attribute kind:string \
    --attribute avatar_image_400x400_url:text \
    --attribute avatar_image_400x400_alt:text \
    --attribute main_image_1080x1080_url:text \
    --attribute main_image_1080x1080_alt:text \
    --attribute main_image_1920x1080_url:text \
    --attribute main_image_1920x1080_alt:text \
    --attribute main_image_1080x1920_url:text \
    --attribute main_image_1080x1920_alt:text \
    --attribute emoji:text \
    --attribute star_count:integer \
    --attribute quick_response_code_id:quick_response_code.id \
    --attribute universal_product_code_id:universal_product_code.id \

mix ash.codegen create_skills
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_skills.exs

mkdir -p lib/my_app_web/live/skills
touch lib/my_app_web/live/skills/form_live.ex
touch lib/my_app_web/live/skills/index_live.ex
touch lib/my_app_web/live/skills/show_live.ex

mkdir -p test/my_app_web/live/skills
touch test/my_app_web/live/skills/form_live.ex
touch test/my_app_web/live/skills/index_live.ex
touch test/my_app_web/live/skills/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/skills", Skills.IndexLive
live "/skills/new", Skills.FormLive, :new
live "/skills/:id", Skills.ShowLive
live "/skills/:id/edit", Skills.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/works/skill.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
