#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.business_analysis_kits \
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
    --attribute six_pager_double_sider_as_url:text \
    --attribute six_pager_double_sider_as_markdown:markdown \
    --attribute swot_as_url:text \
    --attribute swot_strengths_as_markdown:markdown \
    --attribute swot_weaknesses_as_markdown:markdown \
    --attribute swot_opportunities_as_markdown:markdown \
    --attribute swot_threats_as_markdown:markdown \
    --attribute porters_five_forces_as_url:text \
    --attribute porters_five_forces_entrants_as_markdown:markdown \
    --attribute porters_five_forces_substitutes_as_markdown:markdown \
    --attribute porters_five_forces_customers_as_markdown:markdown \
    --attribute porters_five_forces_suppliers_as_markdown:markdown \
    --attribute porters_five_forces_competitors_as_markdown:markdown \
    --attribute steeple_as_url:text \
    --attribute steeple_sociological_as_markdown:markdown \
    --attribute steeple_technological_as_markdown:markdown \
    --attribute steeple_economic_as_markdown:markdown \
    --attribute steeple_environmental_as_markdown:markdown \
    --attribute steeple_political_as_markdown:markdown \
    --attribute steeple_legal_as_markdown:markdown \
    --attribute steeple_ethical_as_markdown:markdown \
    --attribute roles_and_responsibilities_as_url:text \
    --attribute roles_and_responsibilities_as_markdown:markdown \
    --attribute responsibility_assignment_matrix_as_url:text \
    --attribute responsibility_assignment_matrix_as_markdown:markdown \

mix ash.codegen create_business_analysis_kits
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_business_analysis_kits.exs

mkdir -p lib/my_app_web/live/business_analysis_kits
touch lib/my_app_web/live/business_analysis_kits/form_live.ex
touch lib/my_app_web/live/business_analysis_kits/index_live.ex
touch lib/my_app_web/live/business_analysis_kits/show_live.ex

mkdir -p test/my_app_web/live/business_analysis_kits
touch test/my_app_web/live/business_analysis_kits/form_live.ex
touch test/my_app_web/live/business_analysis_kits/index_live.ex
touch test/my_app_web/live/business_analysis_kits/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/business_analysis_kits", BusinessAnalysisKits.IndexLive
live "/business_analysis_kits/new", BusinessAnalysisKits.FormLive, :new
live "/business_analysis_kits/:id", BusinessAnalysisKits.ShowLive
live "/business_analysis_kits/:id/edit", BusinessAnalysisKits.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/business_analysis_kit.ex
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
