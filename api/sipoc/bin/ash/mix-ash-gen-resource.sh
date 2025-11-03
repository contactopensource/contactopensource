#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.Sipoc \
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
    --attribute suppliers_as_url:text \
    --attribute suppliers_as_markdown:markdown \
    --attribute inputs_as_url:text \
    --attribute inputs_as_markdown:markdown \
    --attribute processes_as_url:text \
    --attribute processes_as_markdown:markdown \
    --attribute outputs_as_url:text \
    --attribute outputs_as_markdown:markdown \
    --attribute customers_as_url:text \
    --attribute customers_as_markdown:markdown \

mix ash.codegen create_sipocs
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_sipocs.exs
touch test/my_app/my_domain/sipoc.exs

mkdir -p lib/my_app_web/live/sipocs
touch lib/my_app_web/live/sipocs/form_live.ex
touch lib/my_app_web/live/sipocs/index_live.ex
touch lib/my_app_web/live/sipocs/show_live.ex

mkdir -p test/my_app_web/live/sipocs
touch test/my_app_web/live/sipocs/form_test.exs
touch test/my_app_web/live/sipocs/index_test.exs
touch test/my_app_web/live/sipocs/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/sipocs", Sipocs.IndexLive
live "/sipocs/new", Sipocs.FormLive, :new
live "/sipocs/:id", Sipocs.ShowLive
live "/sipocs/:id/edit", Sipocs.FormLive, :edit

If there is a parent, then edit file lib/my_app/sipoc.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/sipoc.ex
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
