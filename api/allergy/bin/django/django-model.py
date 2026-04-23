#!/bin/sh
set -euf

class Allergy(models.Model):
        id = models.UUIDAttribute("Primary key id that is a secure-random 32-character lowercase hexadecimal, optimized for zero information rather than speed and memory; you can show this id to users.")
        lock_version = models.IntegerAttribute("This is for optimistic locking.")
        created_at = models.UnknownAttribute("The time when this happened.")
        created_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        updated_at = models.UnknownAttribute("The time when this happened.")
        updated_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        retired_at = models.UnknownAttribute("The time when this happened.")
        retired_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        locale_code = models.TextAttribute("An international locale identifier, such as the id of locale "English - United States".")
        tagging = models.TextAttribute("A tagging list that is space-separated and without any hash marks.")
        scientific_name = models.TextAttribute("The World Health Organization and International Union of Immunological Societies (WHO/IUIS) establish a systematic naming convention for allergen identification, which uses the Linnaean taxonomic system (genus and species).")
        european_union_name = models.TextAttribute("The European Union (EU) Food Standards Agency (FSA) mandates identifying "major food allergens".")
        united_states_name = models.TextAttribute("The United States (US) Food and Drug Administration (FDA) mandates identifying "major food allergens" under the Food Allergen Labeling and Consumer Protection Act (FALCPA).")
        cosmetic_name = models.TextAttribute("Cosmetic products must list specific allergens in the ingredient list if they exceed 0.")

