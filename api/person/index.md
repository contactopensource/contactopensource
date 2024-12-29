# person

A person, such as a typical human being. The person API includes attributes that are generally the same across services, such as names and pronouns. The person API excludes attributes that vary by service, such as a username, password, email address, phone number, organization name, etc.


## Attributes

Meta:

  * id: bigint (index)

  * zid: uuid (index)

  * lock_version: int

  * created_at: timestamp

  * created_by: url

  * updated_at: timestamp

  * updated_by: url

  * retired_at: timestamp

  * retired_by: url

  * locale_id: locale.id - example: the id of locale "English - United States".


Card:

  * title: string(50) (index) - example: Alice Anderson


  * subtitle: string(50) (index) - example: @alice


  * summary: string - example: I am a doctor who helps treat children.


  * description: text - example: This text is a description and can be as long as you wish.


  * disambiguation: text - example: This text explains the difference between this item and others.


  * image_1024x1024_url: url

  * image_1024x1024_alt: text

  * emoji: text - example: 🚀


  * star_count: integer - example: 5 for the best rating


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


