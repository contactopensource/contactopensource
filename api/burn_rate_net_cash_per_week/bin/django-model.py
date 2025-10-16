#!/bin/sh
set -euf

class BurnRateNetCashPerWeek(models.Model):
        id = models.UUIDAttribute("Primary key id that is a secure-random 32-character lowercase hexadecimal, optimized for zero information rather than speed and memory; you can show this id to users.")
        lock_version = models.IntegerAttribute("This is for optimistic locking.")
        created_at = models.UnknownAttribute("The time when this happened.")
        created_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        updated_at = models.UnknownAttribute("The time when this happened.")
        updated_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        deleted_at = models.UnknownAttribute("The time when this happened.")
        deleted_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        locale_code = models.TextAttribute("An international locale identifier, such as the id of locale "English - United States".")
        tagging = models.TextAttribute("A tagging list that is space-separated and without any hash marks.")
        actual = models.UnknownAttribute("Burn rate net cash per week actual value")
        target = models.UnknownAttribute("Burn rate net cash per week target value")
        ratio = models.UnknownAttribute("Burn rate net cash per week ratio = (actual / target)")
        unit = models.TextAttribute("Burn rate net cash per week unit")
        description = models.TextAttribute("Burn rate net cash per week description")

