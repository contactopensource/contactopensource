#!/bin/sh
set -euf

class GeographyPoint(models.Model):
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
        latitude_as_decimal_degrees = models.UnknownAttribute("latitude as decimal degrees")
        longitude_as_decimal_degrees = models.UnknownAttribute("longitude as decimal degrees")
        altitude_agl_as_meters = models.UnknownAttribute("altitude above ground level (AGL)")
        altitude_msl_as_meters = models.UnknownAttribute("altitude relative to mean sea level (MSL)")
        elevation_agl_as_meters = models.UnknownAttribute("elevation above ground level (AGL)")
        elevation_msl_as_meters = models.UnknownAttribute("elevation relative to mean sea level (MGL)")

