#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Credential.Passport \
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
    --attribute name_of_holder:text \
    --attribute nationality:text \
    --attribute date_of_birth:date \
    --attribute date_of_birth_check_digit:int \
    --attribute sex:text \
    --attribute composite_check_digit:int \
    --attribute document_type:text \
    --attribute document_number:text \
    --attribute document_number_check_digit:int \
    --attribute issuing_state_or_organization:text \
    --attribute date_of_expiry_or_valid_until_date:date \
    --attribute date_of_expiry_or_valid_until_date_check_digit:int \
    --attribute optional_data:text \
    --attribute optional_data_check_digit:int \
    --attribute encoded_face:binary \
    --attribute encoded_fingers:binary \
    --attribute encoded_eyes:binary \
    --attribute displayed_portrait:binary \
    --attribute reserved_for_future_use:todo \
    --attribute displayed_signature_or_usual_mark:binary \
    --attribute data_features:unknown \
    --attribute structure_features:unknown \
    --attribute substance_features:todo \
    --attribute other_names_of_holder:text \
    --attribute place_of_birth:text \
    --attribute personal_number:text \
    --attribute address:text \
    --attribute telephone_numbers:text \
    --attribute profession:text \
    --attribute title:text \
    --attribute personal_summary:text \
    --attribute proof_of_citizenship:text \
    --attribute other_valid_travel_documents:text \
    --attribute custody_information:text \
    --attribute issuing_authority:text \
    --attribute date_of_issue:date \
    --attribute other_persons_included_on_mrtd:text \
    --attribute endorsements_observations:text \
    --attribute tax_exit_requirements:text \
    --attribute image_of_front_of_mrtd:binary \
    --attribute image_of_rear_of_mrtd:binary \
    --attribute optional_details:text \
    --attribute security_options:todo \
    --attribute active_authentication_public_key_info:todo \
    --attribute persons_to_notify:text \
    --attribute contact_details_of_persons_to_notify:text \
    --relationship belongs_to:country_id:MyApp.MyDomain.MyModel \
    --attribute four_corner_open_book_photo_url:text \
    --attribute four_corner_clear_face_open_book_photo_url:text \

mix ash.codegen create_passports
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_passports.exs
touch test/my_app/my_domain/passport.exs

mkdir -p lib/my_app_web/live/passports
touch lib/my_app_web/live/passports/form_live.ex
touch lib/my_app_web/live/passports/index_live.ex
touch lib/my_app_web/live/passports/show_live.ex

mkdir -p test/my_app_web/live/passports
touch test/my_app_web/live/passports/form_test.exs
touch test/my_app_web/live/passports/index_test.exs
touch test/my_app_web/live/passports/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/passports", Passports.IndexLive
live "/passports/new", Passports.FormLive, :new
live "/passports/:id", Passports.ShowLive
live "/passports/:id/edit", Passports.FormLive, :edit

If there is a parent, then edit file lib/my_app/passport.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/credential/passport.ex
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
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
