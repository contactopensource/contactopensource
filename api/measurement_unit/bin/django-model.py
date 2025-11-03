#!/bin/sh
set -euf

class MeasurementUnit(models.Model):
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
        id = models.TextAttribute("Id is a case-sensitive unique code, such as the UCUM case-sensitive code.")
        name = models.TextAttribute("Name suitable for display")
        name_phonetic = models.TextAttribute("Name phonetic")
        category = models.TextAttribute("Category")
        synonyms = models.TextAttribute("Synonyms")
        loinc_property = models.TextAttribute("LOINC property")
        guidance = models.TextAttribute("Guidance")
        measurement_system_id = models.ForeignKey("Measurement system that is the source of this record", MeasurementSystemId, on_delete=models.CASCADE)("Measurement system that is the source of this record")

