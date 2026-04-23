#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.MedicationRequest \
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
    --attribute title:string \
    --attribute description:string \

mix ash.codegen create_medication_requests
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_medication_requests.exs
touch test/my_app/my_domain/medication_request.exs

mkdir -p lib/my_app_web/live/medication_requests
touch lib/my_app_web/live/medication_requests/form_live.ex
touch lib/my_app_web/live/medication_requests/index_live.ex
touch lib/my_app_web/live/medication_requests/show_live.ex

mkdir -p test/my_app_web/live/medication_requests
touch test/my_app_web/live/medication_requests/form_test.exs
touch test/my_app_web/live/medication_requests/index_test.exs
touch test/my_app_web/live/medication_requests/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/medication_requests", MedicationRequests.IndexLive
live "/medication_requests/new", MedicationRequests.FormLive, :new
live "/medication_requests/:id", MedicationRequests.ShowLive
live "/medication_requests/:id/edit", MedicationRequests.FormLive, :edit

If there is a parent, then edit file lib/my_app/medication_request.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/medication_request.ex
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
