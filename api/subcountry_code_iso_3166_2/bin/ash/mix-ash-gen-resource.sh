#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.SubcountryCodeIso31662 \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute alpha_2:string(2):string \
    --attribute country_code_iso_3166_1_id:references \

mix ash.codegen create_subcountry_code_iso_3166_2s
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_subcountry_code_iso_3166_2s.exs
touch test/my_app/my_domain/subcountry_code_iso_3166_2.exs

mkdir -p lib/my_app_web/live/subcountry_code_iso_3166_2s
touch lib/my_app_web/live/subcountry_code_iso_3166_2s/form_live.ex
touch lib/my_app_web/live/subcountry_code_iso_3166_2s/index_live.ex
touch lib/my_app_web/live/subcountry_code_iso_3166_2s/show_live.ex

mkdir -p test/my_app_web/live/subcountry_code_iso_3166_2s
touch test/my_app_web/live/subcountry_code_iso_3166_2s/form_test.exs
touch test/my_app_web/live/subcountry_code_iso_3166_2s/index_test.exs
touch test/my_app_web/live/subcountry_code_iso_3166_2s/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/subcountry_code_iso_3166_2s", SubcountryCodeIso31662S.IndexLive
live "/subcountry_code_iso_3166_2s/new", SubcountryCodeIso31662S.FormLive, :new
live "/subcountry_code_iso_3166_2s/:id", SubcountryCodeIso31662S.ShowLive
live "/subcountry_code_iso_3166_2s/:id/edit", SubcountryCodeIso31662S.FormLive, :edit

If there is a parent, then edit file lib/my_app/subcountry_code_iso_3166_2.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/subcountry_code_iso_3166_2.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
