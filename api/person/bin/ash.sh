#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Basics.Person \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:char \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:url \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:url \
    --attribute deleted_at:timestamp_utc_usec \
    --attribute deleted_by:url \
    --attribute locale_id:locale.id \
    --attribute title:string \
    --attribute subtitle:string \
    --attribute summary:string \
    --attribute description:text \
    --attribute disambiguation:text \
    --attribute avatar_image_400x400_url:url \
    --attribute avatar_image_400x400_alt:url \
    --attribute main_image_1080x1080_url:url \
    --attribute main_image_1080x1080_alt:text \
    --attribute main_image_1920x1080_url:url \
    --attribute main_image_1920x1080_alt:text \
    --attribute main_image_1080x1920_url:url \
    --attribute main_image_1080x1920_alt:text \
    --attribute emoji:text \
    --attribute star_count:integer \
    --attribute quick_response_code_id:quick_response_code.id \
    --attribute universal_product_code_id:universal_product_code.id \
    --attribute given_name:text \
    --attribute given_name_phonetic:text \
    --attribute middle_name:text \
    --attribute middle_name_phonetic:text \
    --attribute family_name:text \
    --attribute family_name_phonetic:text \
    --attribute legal_name:text \
    --attribute legal_name_phonetic:text \
    --attribute nickname:text \
    --attribute nickname_phonetic:text \
    --attribute prefix_name:text \
    --attribute prefix_name_phonetic:text \
    --attribute suffix_name:text \
    --attribute suffix_name_phonetic:text \
    --attribute salutation_name:text \
    --attribute salutation_name_phonetic:text \
    --attribute addressee_name:text \
    --attribute addressee_name_phonetic:text \
    --attribute subject_pronoun:text \
    --attribute object_pronoun:text \
    --attribute dependent_possessive_pronoun:text \
    --attribute independent_possessive_pronoun:text \
    --attribute reflexive_pronoun:text \
    --attribute intensive_pronoun:text \
    --attribute disjunctive_pronoun:text \
    --attribute birth_date:date \
    --attribute birth_date_year:integer \
    --attribute death_date:date \
    --attribute death_date_year:integer \

mix ash.codegen create_person
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/basics/person.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:sign]
#     index[:created_at]
#     index[:created_by]
#     index[:updated_at]
#     index[:updated_by]
#     index[:deleted_at]
#     index[:deleted_by]
#     index[:locale_id]
#     index[:title]
#     index[:subtitle]
#     index[:birth_date]
#     index[:birth_date_year]
#     index[:death_date]
#     index[:death_date_year]
