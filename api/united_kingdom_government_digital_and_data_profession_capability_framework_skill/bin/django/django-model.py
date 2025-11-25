#!/bin/sh
set -euf

class UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkSkill(models.Model):
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
        name = models.TextAttribute("None")
        url = models.URLAttribute("None")
        description = models.TextAttribute("None")
        level_1_description_as_markdown = models.UnknownAttribute("Skill level 1 is "Awareness"; this field is the exact markdown from the official download CSV.")
        level_1_description_as_html = models.UnknownAttribute("Skill level 1 is "Awareness"; this field is the cache conversion into HTML list items.")
        level_2_description_as_markdown = models.UnknownAttribute("Skill level 2 is "Working"; this field is the exact markdown from the official download CSV.")
        level_2_description_as_html = models.UnknownAttribute("Skill level 2 is "Working"; this field is the cache conversion into HTML list items.")
        level_3_description_as_markdown = models.UnknownAttribute("Skill level 3 is "Practitioner; this field is the exact markdown from the official download CSV.")
        level_3_description_as_html = models.UnknownAttribute("Skill level 3 is "Practitioner"; this field is the cache conversion into HTML list items.")
        level_4_description_as_markdown = models.UnknownAttribute("Skill level 4 is "Expert"; this field is the exact markdown from the official download CSV.")
        level_4_description_as_html = models.UnknownAttribute("Skill level 4 is "Expert"; this field is the cache conversion into HTML list items.")
        roles_that_require_this_skill_as_markdown = models.UnknownAttribute("Roles that require this skill; this field is the exact markdown from the official download CSV.")
        roles_that_require_this_skill_as_html = models.UnknownAttribute("Roles that require this skill; this field is the cache conversion into HTML list items.")

