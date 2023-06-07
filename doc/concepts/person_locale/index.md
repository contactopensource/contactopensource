# person_locale

A `person_locale` is a group of names, with many optional attributes for worldwide choices, prefixes and suffixes, honorifics, etc.

Keys:

* person_id : key -- example: id of "en-US"

* locale_id : key -- example: id of "en-US"

Name attributes:

* given_name : string -- example: "Alice"

* given_name_phonetic : text -- example: "Alice"

* middle_name : string -- example: "Amy"

* middle_name_phonetic : text -- example: "Amy"

* family_name : string -- example: "Adams"

* family_name_phonetic : text -- example: "Adams"

* legal_name : string -- example: "Alice Amy Adams"

* legal_name_phonetic : text -- example: "Alice Amy Adams"

* nickname : string -- example: "Ali"

* nickname_phonetic : text -- example: "Al-lee"

Extra attributes:

* prefix_name : string -- example: "Dr."

* prefix_name_phonetic : text -- example: "Doctor"

* suffix_name : string -- example: "Jr."

* suffix_name_phonetic : text -- example: "Junior"

* salutation_name : string -- example: "Dr. Adams"

* salutation_name_phonetic : text -- example: "Doctor Adams"

* addressee_name : string -- example: "Dr. Alice Adams Jr."

* addressee_name_phonetic : text -- example: "Doctor Alice Adams Junior"

Pronoun attributes:

* subject_pronoun : text -- example: "she" as in "she likes Alice" ~ see https://wikipedia.org/wiki/Subject_pronoun

* object_pronoun : text -- example: "her" as in "Alice likes her" ~ see https://wikipedia.org/wiki/Object_pronoun

* dependent_possessive_pronoun : text -- example: "her" as in "her ideas are good" ~ see https://wikipedia.org/wiki/Possessive_pronoun

* independent_possessive_pronoun : text -- example: "hers" as in "the ideas are hers" ~ see https://wikipedia.org/wiki/Possessive_determiner

* reflexive_pronoun : text -- example: "herself" as in "she likes herself" ~ see https://wikipedia.org/wiki/Reflexive_pronoun

* intensive_pronoun : text -- example: "herself" as in "she does it herself" ~ see https://en.wikipedia.org/wiki/Intensive_pronoun

* disjunctive_pronoun : text -- example: "her" as in "it is her" ~ see https://wikipedia.org/wiki/Disjunctive_pronoun
