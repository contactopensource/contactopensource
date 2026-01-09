#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Personality.SixAxisModelOfInfluence \
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
    --attribute suggestibility:probability \
    --attribute focus:probability \
    --attribute openness:probability \
    --attribute connection:probability \
    --attribute compliance:probability \
    --attribute expectancy:probability \

mix ash.codegen create_six_axis_model_of_influences
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_six_axis_model_of_influences.exs
touch test/my_app/my_domain/six_axis_model_of_influence.exs

mkdir -p lib/my_app_web/live/six_axis_model_of_influences
touch lib/my_app_web/live/six_axis_model_of_influences/form_live.ex
touch lib/my_app_web/live/six_axis_model_of_influences/index_live.ex
touch lib/my_app_web/live/six_axis_model_of_influences/show_live.ex

mkdir -p test/my_app_web/live/six_axis_model_of_influences
touch test/my_app_web/live/six_axis_model_of_influences/form_test.exs
touch test/my_app_web/live/six_axis_model_of_influences/index_test.exs
touch test/my_app_web/live/six_axis_model_of_influences/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/six_axis_model_of_influences", SixAxisModelOfInfluences.IndexLive
live "/six_axis_model_of_influences/new", SixAxisModelOfInfluences.FormLive, :new
live "/six_axis_model_of_influences/:id", SixAxisModelOfInfluences.ShowLive
live "/six_axis_model_of_influences/:id/edit", SixAxisModelOfInfluences.FormLive, :edit

If there is a parent, then edit file lib/my_app/six_axis_model_of_influence.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/personality/six_axis_model_of_influence.ex
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
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
