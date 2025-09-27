#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Basics.Person \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:string \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:text \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:text \
    --attribute deleted_at:timestamp_utc_usec \
    --attribute deleted_by:text \
    --attribute locale_code:string \
    --attribute sign:string \
    --attribute kind:string \
    --attribute title:string \
    --attribute subtitle:string \
    --attribute summary:string \
    --attribute description:text \
    --attribute disambiguation:text \
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
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
