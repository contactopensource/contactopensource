#!/bin/sh
set -euf

class MedicationStem(models.Model):
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
        stem = models.TextAttribute("The medication stem is the part of a medication's name that indicates its pharmacological class or chemical structure, often following specific naming conventions (stems) that reflect their function or target. For example, -cillin denotes penicillins, -olol indicates beta-blockers, and -statin indicates cholesterol-lowering drugs.")
        class = models.TextAttribute("The medication class is a group of medications that share similar pharmacological properties, mechanisms of action, or therapeutic uses. For example, penicillins are a class of antibiotics that include medications with the -cillin stem, such as amoxicillin and penicillin G.")
        examples = models.TextAttribute("Examples of medications that belong to the class indicated by the stem. For instance, for the -cillin stem, examples include amoxicillin, penicillin G, and ampicillin.")

