#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Account.Organization \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_organizations
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_organizations.exs
touch test/my_app/my_domain/organization.exs

mkdir -p lib/my_app_web/live/organizations
touch lib/my_app_web/live/organizations/form_live.ex
touch lib/my_app_web/live/organizations/index_live.ex
touch lib/my_app_web/live/organizations/show_live.ex

mkdir -p test/my_app_web/live/organizations
touch test/my_app_web/live/organizations/form_test.exs
touch test/my_app_web/live/organizations/index_test.exs
touch test/my_app_web/live/organizations/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/organizations", Organizations.IndexLive
live "/organizations/new", Organizations.FormLive, :new
live "/organizations/:id", Organizations.ShowLive
live "/organizations/:id/edit", Organizations.FormLive, :edit

If there is a parent, then edit file lib/my_app/organization.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/account/organization.ex
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
