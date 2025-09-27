#!/bin/sh
set -euf

class GeographyPoint(models.Model):
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
        latitude_as_decimal_degrees = models.UnknownAttribute("latitude as decimal degrees")
        longitude_as_decimal_degrees = models.UnknownAttribute("longitude as decimal degrees")
        altitude_agl_as_meters = models.UnknownAttribute("altitude above ground level (AGL)")
        altitude_msl_as_meters = models.UnknownAttribute("altitude relative to mean sea level (MSL)")
        elevation_agl_as_meters = models.UnknownAttribute("elevation above ground level (AGL)")
        elevation_msl_as_meters = models.UnknownAttribute("elevation relative to mean sea level (MGL)")

