# person


A person, such as a typical human being.


## Attributes

Meta:

  * id: uuid (index)

  * lock_version: integer

  * created_at: timestamp

  * created_by: url

  * updated_at: timestamp

  * updated_by: url

  * retired_at: timestamp

  * retired_by: url

  * locale_id: locale.id - example: the id of locale "English - United States".

Card:

  * title: string (index) - example: Alice Anderson

  * subtitle: string (index) - example: @alice

  * summary: string - example: This text is a one-line summary, maximum 72 characters, for compatibility with terminal screens and many other systems.

  * description: text - example: This text is a description and can be as long as you wish.

  * disambiguation: text - example: This text explains the difference between this item and others.

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

names:

  * given_name: text - example: Alice

  * given_name_phonetic: text - example: ˈæləs

  * middle_name: text - example: Amy

  * middle_name_phonetic: text - example: ˈeɪmi

  * family_name: text - example: Adams

  * family_name_phonetic: text - example: ˈædəmz

  * legal_name: text - example: Alice Amy Adams

  * legal_name_phonetic: text - example: ˈæləs ˈeɪmi ˈædəmz

  * nickname: text - example: Ali

  * nickname_phonetic: text - example: ˈɑli

  * prefix_name: text - example: Doctor

  * prefix_name_phonetic: text - example: ˈdɑktər

  * suffix_name: text - example: Junior

  * suffix_name_phonetic: text - example: ˈʤunjər

  * salutation_name: text - example: Doctor Adams

  * salutation_name_phonetic: text - example: ˈdɑktər ˈædəmz

  * addressee_name: text - example: Doctor Alice Adams Junior

  * addressee_name_phonetic: text - example: ˈdɑktər ˈæləs ˈædəmz ˈʤunjər

pronouns:

  * subject_pronoun: text - example: she as in "She likes Alice."

  * object_pronoun: text - example: her as in "Alice likes her."

  * dependent_possessive_pronoun: text - example: her as in "Her ideas are good."

  * independent_possessive_pronoun: text - example: hers as in "The ideas are hers."

  * reflexive_pronoun: text - example: herself as in "She likes herself."

  * intensive_pronoun: text - example: herself as in "She does it herself."

  * disjunctive_pronoun: text - example: her as in "It is her."

lifetime:

  * birth_date: date (index) - example: 1970-01-01

  * birth_date_year: integer (index) - example: 1970

  * death_date: date (index) - example: 2070-01-01

  * death_date_year: integer (index) - example: 2070

