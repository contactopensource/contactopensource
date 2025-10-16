#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.net_promoter_score_worker_perspectives \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:text \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:text \
    --attribute deleted_at:timestamp_utc_usec \
    --attribute deleted_by:text \
    --attribute locale_code:string \
    --attribute tagging:string \
    --attribute actual:numeric \
    --attribute expect:numeric \
    --attribute ratio:numeric \
    --attribute unit:text \
    --attribute description_as_markdown:text \

mix ash.codegen create_net_promoter_score_worker_perspectives
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_net_promoter_score_worker_perspectives.exs

mkdir -p lib/my_app_web/live/net_promoter_score_worker_perspectives
touch lib/my_app_web/live/net_promoter_score_worker_perspectives/form_live.ex
touch lib/my_app_web/live/net_promoter_score_worker_perspectives/index_live.ex
touch lib/my_app_web/live/net_promoter_score_worker_perspectives/show_live.ex

mkdir -p test/my_app_web/live/net_promoter_score_worker_perspectives
touch test/my_app_web/live/net_promoter_score_worker_perspectives/form_live.ex
touch test/my_app_web/live/net_promoter_score_worker_perspectives/index_live.ex
touch test/my_app_web/live/net_promoter_score_worker_perspectives/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/net_promoter_score_worker_perspectives", NetPromoterScoreWorkerPerspectives.IndexLive
live "/net_promoter_score_worker_perspectives/new", NetPromoterScoreWorkerPerspectives.FormLive, :new
live "/net_promoter_score_worker_perspectives/:id", NetPromoterScoreWorkerPerspectives.ShowLive
live "/net_promoter_score_worker_perspectives/:id/edit", NetPromoterScoreWorkerPerspectives.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/net_promoter_score_worker_perspective.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
