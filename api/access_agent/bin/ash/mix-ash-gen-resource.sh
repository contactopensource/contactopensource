#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Access.AccessAgent \
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
    --attribute key:string \

mix ash.codegen create_access_agents
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_access_agents.exs
touch test/my_app/my_domain/access_agent.exs

mkdir -p lib/my_app_web/live/access_agents
touch lib/my_app_web/live/access_agents/form_live.ex
touch lib/my_app_web/live/access_agents/index_live.ex
touch lib/my_app_web/live/access_agents/show_live.ex

mkdir -p test/my_app_web/live/access_agents
touch test/my_app_web/live/access_agents/form_test.exs
touch test/my_app_web/live/access_agents/index_test.exs
touch test/my_app_web/live/access_agents/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/access_agents", AccessAgents.IndexLive
live "/access_agents/new", AccessAgents.FormLive, :new
live "/access_agents/:id", AccessAgents.ShowLive
live "/access_agents/:id/edit", AccessAgents.FormLive, :edit

If there is a parent, then edit file lib/my_app/access_agent.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/access/access_agent.ex
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
#     index[:key] \
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
