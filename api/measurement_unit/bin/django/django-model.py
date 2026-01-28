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
        measurement_system_id = models.ForeignKey("Measurement system that is the source of this record", MeasurementSystemId, on_delete=models.CASCADE)("Measurement system that is the source of this record")
        code = models.TextAttribute("code that is unique to the measurement system and is case-sensitive, such as the UCUM code "s" meaning "second".")
        name = models.TextAttribute("Name suitable for display")
        name_phonetic = models.TextAttribute("Name phonetic")
        synonyms = models.TextAttribute("Synonyms, as a comma-separated list")
        category = models.TextAttribute("Category, which is typically relevant to the measurement system, such as the medical category "Clinical". Case-sensitive.")
        property = models.TextAttribute("Property, which is typically relevant to the measure system, such as the medical LOINC property "Time". Case-sensitive.")
        guidance = models.TextAttribute("Guidance")

