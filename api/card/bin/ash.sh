#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.cards \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute name:string \
    --attribute subname:string \
    --attribute summary:string \
    --attribute description:text \
    --attribute disambiguation:text \
    --attribute sign:string \
    --attribute kind:string \
    --attribute avatar_image_400x400_url:text \
    --attribute avatar_image_400x400_alt:text \
    --attribute main_image_1080x1080_url:text \
    --attribute main_image_1080x1080_alt:text \
    --attribute main_image_1920x1080_url:text \
    --attribute main_image_1920x1080_alt:text \
    --attribute main_image_1080x1920_url:text \
    --attribute main_image_1080x1920_alt:text \
    --attribute emoji:text \
    --attribute star_count:integer \
    --attribute quick_response_code_id:quick_response_code.id \
    --attribute universal_product_code_id:universal_product_code.id \

mix ash.codegen create_cards
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_cards.exs

mkdir -p lib/my_app_web/live/cards
touch lib/my_app_web/live/cards/form_live.ex
touch lib/my_app_web/live/cards/index_live.ex
touch lib/my_app_web/live/cards/show_live.ex

mkdir -p test/my_app_web/live/cards
touch test/my_app_web/live/cards/form_live.ex
touch test/my_app_web/live/cards/index_live.ex
touch test/my_app_web/live/cards/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/cards", Cards.IndexLive
live "/cards/new", Cards.FormLive, :new
live "/cards/:id", Cards.ShowLive
live "/cards/:id/edit", Cards.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/card.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
