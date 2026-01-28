#!/bin/sh
set -euf

class Measurement(models.Model):
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
        timestamp_utc_usec = models.UnknownAttribute("Timestamp")
        measurement_unit_id = models.ForeignKey("Measurement unit id", MeasurementUnitId, on_delete=models.CASCADE)("Measurement unit id")
        measurement_device_id = models.ForeignKey("Measurement device id", MeasurementDeviceId, on_delete=models.CASCADE)("Measurement device id")
        value = models.UnknownAttribute("TODO")

