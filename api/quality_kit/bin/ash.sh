#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.QualityKit \
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
    --attribute quality_availability_as_url:text \
    --attribute quality_availability_as_markdown:markdown \
    --attribute quality_certifiability_as_url:text \
    --attribute quality_certifiability_as_markdown:markdown \
    --attribute quality_compatibility_as_url:text \
    --attribute quality_compatibility_as_markdown:markdown \
    --attribute quality_efficiency_as_url:text \
    --attribute quality_efficiency_as_markdown:markdown \
    --attribute quality_governability_as_url:text \
    --attribute quality_governability_as_markdown:markdown \
    --attribute quality_maintainability_as_url:text \
    --attribute quality_maintainability_as_markdown:markdown \
    --attribute quality_observability_as_url:markdown \
    --attribute quality_observability_as_markdown:markdown \
    --attribute quality_operability_as_markdown:text \
    --attribute quality_operability_as_markdown:markdown \
    --attribute quality_recoverability_as_url:text \
    --attribute quality_recoverability_as_markdown:markdown \
    --attribute quality_scalability_as_url:text \
    --attribute quality_scalability_as_markdown:markdown \
    --attribute quality_security_as_url:text \
    --attribute quality_security_as_markdown:markdown \
    --attribute quality_suitability_as_url:markdown \
    --attribute quality_suitability_as_markdown:markdown \
    --attribute quality_testability_as_url:text \
    --attribute quality_testability_as_markdown:markdown \
    --attribute quality_transferability_as_url:text \
    --attribute quality_transferability_as_markdown:markdown \
    --attribute quality_translatability_as_url:text \
    --attribute quality_translatability_as_markdown:markdown \
    --attribute quality_warrantability_as_url:text \
    --attribute quality_warrantability_as_markdown:markdown \

mix ash.codegen create_quality_kits
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_quality_kits.exs

mkdir -p lib/my_app_web/live/quality_kits
touch lib/my_app_web/live/quality_kits/form_live.ex
touch lib/my_app_web/live/quality_kits/index_live.ex
touch lib/my_app_web/live/quality_kits/show_live.ex

mkdir -p test/my_app_web/live/quality_kits
touch test/my_app_web/live/quality_kits/form_live.ex
touch test/my_app_web/live/quality_kits/index_live.ex
touch test/my_app_web/live/quality_kits/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/quality_kits", QualityKits.IndexLive
live "/quality_kits/new", QualityKits.FormLive, :new
live "/quality_kits/:id", QualityKits.ShowLive
live "/quality_kits/:id/edit", QualityKits.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/quality_kit.ex
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
