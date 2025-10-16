#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.country_code_iso_3166_1s \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute alpha_2:string(2):string \

mix ash.codegen create_country_code_iso_3166_1s
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_country_code_iso_3166_1s.exs

mkdir -p lib/my_app_web/live/country_code_iso_3166_1s
touch lib/my_app_web/live/country_code_iso_3166_1s/form_live.ex
touch lib/my_app_web/live/country_code_iso_3166_1s/index_live.ex
touch lib/my_app_web/live/country_code_iso_3166_1s/show_live.ex

mkdir -p test/my_app_web/live/country_code_iso_3166_1s
touch test/my_app_web/live/country_code_iso_3166_1s/form_live.ex
touch test/my_app_web/live/country_code_iso_3166_1s/index_live.ex
touch test/my_app_web/live/country_code_iso_3166_1s/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/country_code_iso_3166_1s", CountryCodeIso31661S.IndexLive
live "/country_code_iso_3166_1s/new", CountryCodeIso31661S.FormLive, :new
live "/country_code_iso_3166_1s/:id", CountryCodeIso31661S.ShowLive
live "/country_code_iso_3166_1s/:id/edit", CountryCodeIso31661S.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/country_code_iso_3166_1.ex
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
