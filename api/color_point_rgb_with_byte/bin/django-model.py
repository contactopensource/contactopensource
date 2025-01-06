#!/bin/sh
set -euf

class None(models.Model):
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
        red = models.UnknownAttribute("red")
        green = models.UnknownAttribute("green")
        blue = models.UnknownAttribute("blue")

