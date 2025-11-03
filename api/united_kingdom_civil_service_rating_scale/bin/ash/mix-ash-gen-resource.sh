#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Codes.UnitedKingdomCivilServiceRatingScale \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute rating:integer \
    --attribute label:string \
    --attribute definition:string \

mix ash.codegen create_united_kingdom_civil_service_rating_scales
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_united_kingdom_civil_service_rating_scales.exs
touch test/my_app/my_domain/united_kingdom_civil_service_rating_scale.exs

mkdir -p lib/my_app_web/live/united_kingdom_civil_service_rating_scales
touch lib/my_app_web/live/united_kingdom_civil_service_rating_scales/form_live.ex
touch lib/my_app_web/live/united_kingdom_civil_service_rating_scales/index_live.ex
touch lib/my_app_web/live/united_kingdom_civil_service_rating_scales/show_live.ex

mkdir -p test/my_app_web/live/united_kingdom_civil_service_rating_scales
touch test/my_app_web/live/united_kingdom_civil_service_rating_scales/form_test.exs
touch test/my_app_web/live/united_kingdom_civil_service_rating_scales/index_test.exs
touch test/my_app_web/live/united_kingdom_civil_service_rating_scales/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/united_kingdom_civil_service_rating_scales", UnitedKingdomCivilServiceRatingScales.IndexLive
live "/united_kingdom_civil_service_rating_scales/new", UnitedKingdomCivilServiceRatingScales.FormLive, :new
live "/united_kingdom_civil_service_rating_scales/:id", UnitedKingdomCivilServiceRatingScales.ShowLive
live "/united_kingdom_civil_service_rating_scales/:id/edit", UnitedKingdomCivilServiceRatingScales.FormLive, :edit

If there is a parent, then edit file lib/my_app/united_kingdom_civil_service_rating_scale.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/codes/united_kingdom_civil_service_rating_scale.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:rating] \
#     index[:label] \
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
