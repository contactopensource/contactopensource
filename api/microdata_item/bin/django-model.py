#!/bin/sh
set -euf

class MicrodataItem(models.Model):
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
        itemtype = models.UnknownAttribute("A valid URL of a vocabulary that describes the item and its properties context.")
        itemprop = models.TextAttribute("Indicates that its containing tag holds the value of the
specified item property. The property's name and value context
are described by the item's vocabulary. Properties values
usually consist of string values, but can also use URLs using
the a element and its href attribute, the img element and its
src attribute, or other elements that link to or embed external
resources.")

