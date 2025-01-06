#!/bin/sh
set -euf

class GeographyPoint(models.Model):
        id = models.UnknownAttribute("Primary key id that is optimized for speed; do not show this to users.")
        zid = models.UUIDAttribute("Secure-random 32-character lowercase hexadecimal that is optimized for zero information; you can show this to users.")
        lock_version = models.UnknownAttribute("This is for optimistic locking.")
        created_at = models.UnknownAttribute("None")
        created_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        updated_at = models.UnknownAttribute("None")
        updated_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        retired_at = models.UnknownAttribute("None")
        retired_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        locale_id = models.UnknownAttribute("An international locale identifier, such as the id of locale "English - United States".")
        latitude_as_decimal_degrees = models.UnknownAttribute("latitude as decimal degrees")
        longitude_as_decimal_degrees = models.UnknownAttribute("longitude as decimal degrees")
        altitude_agl_as_meters = models.UnknownAttribute("altitude above ground level (AGL)")
        altitude_msl_as_meters = models.UnknownAttribute("altitude relative to mean sea level (MSL)")
        elevation_agl_as_meters = models.UnknownAttribute("elevation above ground level (AGL)")
        elevation_msl_as_meters = models.UnknownAttribute("elevation relative to mean sea level (MGL)")

