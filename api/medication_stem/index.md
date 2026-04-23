# medication_stem


Medication stem is the part of a medication's name that indicates its pharmacological class or chemical structure, often following specific naming conventions (stems) that reflect their function or target. For example, -cillin denotes penicillins, -olol indicates beta-blockers, and -statin indicates cholesterol-lowering drugs.


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

  * stem: string - example: –cillin

  * class: string - example: Penicillins

  * examples: string - example: ampicillin, penicillin, oxacillin

