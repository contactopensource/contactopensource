#!/bin/sh
set -euf

class Medicine(models.Model):
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
        international_nonproprietary_name = models.TextAttribute("The International Nonproprietary Name (INN) is a standard generic name assigned to the active ingredient, distinct from its brand name. These names follow specific naming conventions (stems) that reflect their chemical structure, function, or target. For example, -cillin denotes penicillins, -olol indicates beta-blockers, and -statin indicates cholesterol-lowering drugs.")
        description = models.TextAttribute("The description provides a detailed overview of the medicine, including its uses, effects, and any relevant information about its application. For example, "Aspirin is a medication used to reduce pain, fever, or inflammation. It is also used as an antiplatelet agent to prevent blood clots."")

