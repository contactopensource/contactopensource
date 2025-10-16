#!/bin/sh
set -euf

class TotalProjectControl(models.Model):
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
        dipp = models.UnknownAttribute("Devaux's Index of Project Performance (DIPP)")
        dipp_progress_index_ratio = models.UnknownAttribute("Devaux's Index of Project Performance (DIPP) Progress Index (PI)")
        dipp_progress_index_numerator = models.UnknownAttribute("Devaux's Index of Project Performance (DIPP) Progress Index (PI) Numerator")
        dipp_progress_index_denominator = models.UnknownAttribute("Devaux's Index of Project Performance (DIPP) Progress Index (PI) Denominator")
        expected_monetary_value = models.UnknownAttribute("Expected Monetary Value (EMV)")
        cost_estimate_to_complete = models.UnknownAttribute("Cost Estimate to Complete (CEC)")

