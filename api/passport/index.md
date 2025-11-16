# passport


A passport credential, such as a government passport for travel.


## Attributes

meta:

  * id: uuid (index)

  * lock_version: integer

  * created_at: timestamp_utc_usec (index)

  * created_by: url (index)

  * updated_at: timestamp_utc_usec (index)

  * updated_by: url (index)

  * retired_at: timestamp_utc_usec (index)

  * retired_by: url (index)

  * locale_code: string (index) - example: the locale code "en-US" means "English - United States".

  * tagging: string (index) - example: The tagging "red green blue" means a list of three tags ["red", "green", "blue"]

card:

  * name: string(50) (index) - example: Alice Anderson

  * subname: string(50) (index) - example: @alice

  * slug: string(72) (index) - example: alice-anderson

  * summary: string(72)

  * description: text

  * disambiguation: text

  * sign: string(1) (index) - example: a green check mark emoji to indicate that this instance is complete.

  * kind: string (index) - example: a "Pet" resource can be a kind of "Dog", "Cat", "Bird", etc.

  * avatar_image_400x400_url: url

  * avatar_image_400x400_alt: url

  * main_image_1080x1080_url: url

  * main_image_1080x1080_alt: text

  * main_image_1920x1080_url: url

  * main_image_1920x1080_alt: text

  * main_image_1080x1920_url: url

  * main_image_1080x1920_alt: text

  * emoji: text - example: 🚀

  * star_count: integer - example: 5 for the best rating

  * quick_response_code_id: quick_response_code.id - example: A quick-response code that is a URL that leads to this card.

  * universal_product_code_id: universal_product_code.id - example: A universal product code that is an id that leads to this card.

ICAO 9303 DG1 required personal details:

  * name_of_holder: text - example: Alice Adams

  * nationality: text - example: United States of America

  * date_of_birth: date - example: 2000-01-01

  * date_of_birth_check_digit: int - example: 1

  * sex: text - example: Female

  * composite_check_digit: int - example: 1

ICAO 9303 DG1 required document details:

  * document_type: text - example: todo

  * document_number: text - example: 111-111-111-111

  * document_number_check_digit: int - example: 1

  * issuing_state_or_organization: text - example: United States of America Department of State

  * date_of_expiry_or_valid_until_date: date - example: 2030-01-01

  * date_of_expiry_or_valid_until_date_check_digit: int - example: 1

  * optional_data: text (nullable) - example: todo

  * optional_data_check_digit: int (nullable) - example: 1

ICAO 9303 DG2:

  * encoded_face: binary - example: todo

ICAO 9303 DG3:

  * encoded_fingers: binary (nullable) - example: todo

ICAO 9303 DG4:

  * encoded_eyes: binary (nullable) - example: todo

ICAO 9303 DG5:

  * displayed_portrait: binary (nullable) - example: todo

ICAO 9303 DG6:

  * reserved_for_future_use: todo (nullable) - example: todo

ICAO 9303 DG7:

  * displayed_signature_or_usual_mark: binary - example: todo

ICAO 9303 DG8:

  * data_features: unknown (nullable) - example: todo

ICAO 9303 DG9:

  * structure_features: unknown (nullable) - example: todo

ICAO 9303 DG10:

  * substance_features: todo (nullable) - example: todo

ICAO 9303 DG11 additional personal details:

  * other_names_of_holder: text (nullable) - example: Ali Adams, Alicia Adams

  * place_of_birth: text (nullable) - example: San Francisco, California, United States of America

  * personal_number: text (nullable) - example: todo

  * address: text (nullable) - example: 123 Main St, San Francisco, California, 94101, United States of America

  * telephone_numbers: text (nullable) - example: 1-415-555-5555

  * profession: text (nullable) - example: Teacher

  * title: text (nullable) - example: Mx

  * personal_summary: text (nullable) - example: I am a teacher.

  * proof_of_citizenship: text (nullable) - example: Birth certificate

  * other_valid_travel_documents: text (nullable) - example: todo

  * custody_information: text (nullable) - example: todo

ICAO 9303 DG12 additional document details:

  * issuing_authority: text (nullable) - example: todo

  * date_of_issue: date (nullable) - example: 2020-01-01

  * other_persons_included_on_mrtd: text (nullable) - example: Bob Adams, Carol Adams

  * endorsements_observations: text (nullable) - example: todo

  * tax_exit_requirements: text (nullable) - example: todo

  * image_of_front_of_mrtd: binary (nullable) - example: todo

  * image_of_rear_of_mrtd: binary (nullable) - example: todo

ICAO 9303 DG13:

  * optional_details: text (nullable) - example: todo

ICAO 9303 DG14:

  * security_options: todo (nullable) - example: todo

ICAO 9303 DG15:

  * active_authentication_public_key_info: todo (nullable) - example: todo

ICAO 9303 DG16:

  * persons_to_notify: text (nullable) - example: Bob Adams (spouse)

  * contact_details_of_persons_to_notify: text (nullable) - example: todo

Extra:

  * country_id: country.id - example: todo

  * four_corner_open_book_photo_url: url

  * four_corner_clear_face_open_book_photo_url: url

