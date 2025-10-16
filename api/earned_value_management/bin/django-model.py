#!/bin/sh
set -euf

class EarnedValueManagement(models.Model):
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
        planned_value = models.UnknownAttribute("Earned Value Management (EVM) Planned Value (PV)")
        earned_value = models.UnknownAttribute("Earned Value Management (EVM) Earned Value (EV)")
        actual_cost = models.UnknownAttribute("Earned Value Management (EVM) Actual Cost (AC)")
        cost_variance = models.UnknownAttribute("Earned Value Management (EVM) Cost Variance (CV)

- Cost Variance (CV) = Earned Value (EV) – Actual Cost (AC)

- Positive: ahead of budget a.k.a. cost underrun

- Negative: behind budget a.k.a. cost overrun")
        cost_variance_ratio = models.UnknownAttribute("Earned Value Management (EVM) Cost Variance Ratio (CVR)")
        cost_performance_index = models.UnknownAttribute("Earned Value Management (EVM) Cost Performance Index (CVI)

- Cost Performance Index (CPI) = Earned Value (EV) / Actual Cost (AC)

- Positive: cost is less than budgeted

- Negative: cost is greater than budgeted")
        schedule_variance = models.UnknownAttribute("Earned Value Management (EVM) Schedule Variance (SV)

- Schedule Variance (SV) = Earned Value (EV) – Planned Value (PV)

- Positive: ahead of schedule a.k.a. time underrun

- Negative: behind schedule a.,k.a. time overrun")
        schedule_variance_ratio = models.UnknownAttribute("Earned Value Management (EVM) Schedule Variance Ratio (SVR)")
        schedule_performance_index = models.UnknownAttribute("Earned Value Management (EVM) Schedule Performance Index (SPI)

- Schedule Performance Index (SPI) = Earned Value (EV) / Planned Value (PV)

- Positive: ahead of schedule

- Negative: behind schedule")

