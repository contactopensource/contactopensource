#!/bin/sh
set -euf

class UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRole(models.Model):
        id = models.UUIDAttribute("Primary key id that is a secure-random 32-character lowercase hexadecimal, optimized for zero information rather than speed and memory; you can show this id to users.")
        sign = models.CharAttribute("A sign character such as an emoji to indicate status, or categorization, or label, or importance; this item is intended to be user-visible, and intended to be shown early in an list of items, such as immediately after the primary key id, and before any item title.")
        lock_version = models.IntegerAttribute("This is for optimistic locking.")
        created_at = models.UnknownAttribute("The time when this happened.")
        created_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        updated_at = models.UnknownAttribute("The time when this happened.")
        updated_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        deleted_at = models.UnknownAttribute("The time when this happened.")
        deleted_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        locale_code = models.TextAttribute("An international locale identifier, such as the id of locale "English - United States".")
        family_id = models.UnknownAttribute("The wider group that each role is part of")
        name = models.TextAttribute("The name the role")
        url = models.URLAttribute("The link to the UK GDAD PCF role")
        description = models.TextAttribute("The short description and typical responsibilities for the role in general")
        level_name = models.TextAttribute("the name of the role levels that the role has")
        level_description = models.TextAttribute("The short description and typical responsibilities for each role level")
        senior_civil_service_flag = models.UnknownAttribute("Whether the role uses the skills for Senior Civil Service roles")

