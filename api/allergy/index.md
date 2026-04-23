# allergy


An allergy is an inappropriate, exaggerated immune system response to normally harmless substances (allergens) such as pollen, food, or pet dander. The body mistakenly identifies these as a threat, triggering symptoms ranging from minor discomfort (itchy rashes, sneezing) to life-threatening emergencies (anaphylaxis). 


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

Main:

  * scientific_name: string - example: Betula pendula (birch pollen)

  * european_union_name: string - example: wheat

  * united_states_name: string - example: wheat

  * cosmetic_name: string - example: Limonene

