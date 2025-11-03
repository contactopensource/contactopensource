#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Access.AccessAssignment \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --relationship belongs_to:access_agent_id:MyApp.MyDomain.AccessAgent \
    --relationship belongs_to:access_attribute_id:MyApp.MyDomain.AccessAttribute \

mix ash.codegen create_access_assignments
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_access_assignments.exs
touch test/my_app/my_domain/access_assignment.exs

mkdir -p lib/my_app_web/live/access_assignments
touch lib/my_app_web/live/access_assignments/form_live.ex
touch lib/my_app_web/live/access_assignments/index_live.ex
touch lib/my_app_web/live/access_assignments/show_live.ex

mkdir -p test/my_app_web/live/access_assignments
touch test/my_app_web/live/access_assignments/form_test.exs
touch test/my_app_web/live/access_assignments/index_test.exs
touch test/my_app_web/live/access_assignments/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/access_assignments", AccessAssignments.IndexLive
live "/access_assignments/new", AccessAssignments.FormLive, :new
live "/access_assignments/:id", AccessAssignments.ShowLive
live "/access_assignments/:id/edit", AccessAssignments.FormLive, :edit

If there is a parent, then edit file lib/my_app/access_assignment.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/access/access_assignment.ex
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
