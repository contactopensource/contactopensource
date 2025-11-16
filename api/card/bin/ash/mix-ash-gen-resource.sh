#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.Card \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute name:string \
    --attribute subname:string \
    --attribute slug:string \
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
    --relationship belongs_to:quick_response_code_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:universal_product_code_id:MyApp.MyDomain.MyModel \

mix ash.codegen create_cards
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_cards.exs
touch test/my_app/my_domain/card.exs

mkdir -p lib/my_app_web/live/cards
touch lib/my_app_web/live/cards/form_live.ex
touch lib/my_app_web/live/cards/index_live.ex
touch lib/my_app_web/live/cards/show_live.ex

mkdir -p test/my_app_web/live/cards
touch test/my_app_web/live/cards/form_test.exs
touch test/my_app_web/live/cards/index_test.exs
touch test/my_app_web/live/cards/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/cards", Cards.IndexLive
live "/cards/new", Cards.FormLive, :new
live "/cards/:id", Cards.ShowLive
live "/cards/:id/edit", Cards.FormLive, :edit

If there is a parent, then edit file lib/my_app/card.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
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
#     index[:name] \
#     index[:subname] \
#     index[:slug] \
#     index[:sign] \
#     index[:kind] \
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
