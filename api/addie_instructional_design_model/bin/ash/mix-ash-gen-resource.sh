#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.PaddiemInstructionalDesignModel \
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
    --attribute name:string \
    --attribute subname:string \
    --attribute slug:string \
    --attribute summary:string \
    --attribute description:text \
    --attribute disambiguation:text \
    --attribute sign:text \
    --attribute kind:string \
    --attribute star_count:integer \
    --relationship belongs_to:quick_response_code_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:universal_product_code_id:MyApp.MyDomain.MyModel \
    --attribute phase_1_analysis_as_markdown:markdown \
    --attribute phase_2_design_as_markdown:markdown \
    --attribute phase_3_development_as_markdown:markdown \
    --attribute phase_4_implementation_as_markdown:markdown \
    --attribute phase_5_evaluation_as_markdown:markdown \

mix ash.codegen create_paddiem_instructional_design_models
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_paddiem_instructional_design_models.exs
touch test/my_app/my_domain/paddiem_instructional_design_model.exs

mkdir -p lib/my_app_web/live/paddiem_instructional_design_models
touch lib/my_app_web/live/paddiem_instructional_design_models/form_live.ex
touch lib/my_app_web/live/paddiem_instructional_design_models/index_live.ex
touch lib/my_app_web/live/paddiem_instructional_design_models/show_live.ex

mkdir -p test/my_app_web/live/paddiem_instructional_design_models
touch test/my_app_web/live/paddiem_instructional_design_models/form_test.exs
touch test/my_app_web/live/paddiem_instructional_design_models/index_test.exs
touch test/my_app_web/live/paddiem_instructional_design_models/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/paddiem_instructional_design_models", PaddiemInstructionalDesignModels.IndexLive
live "/paddiem_instructional_design_models/new", PaddiemInstructionalDesignModels.FormLive, :new
live "/paddiem_instructional_design_models/:id", PaddiemInstructionalDesignModels.ShowLive
live "/paddiem_instructional_design_models/:id/edit", PaddiemInstructionalDesignModels.FormLive, :edit

If there is a parent, then edit file lib/my_app/paddiem_instructional_design_model.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/paddiem_instructional_design_model.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:created_at] \
#     index[:created_by] \
#     index[:updated_at] \
#     index[:updated_by] \
#     index[:retired_at] \
#     index[:retired_by] \
#     index[:locale_code] \
#     index[:tagging] \
#     index[:name] \
#     index[:subname] \
#     index[:slug] \
#     index[:sign] \
#     index[:kind] \
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
