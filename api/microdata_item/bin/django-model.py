#!/bin/sh
set -euf

class MicrodataItem(models.Model):
        id = models.UUIDAttribute("Primary key id that is a secure-random 32-character lowercase hexadecimal, optimized for zero information rather than speed and memory; you can show this id to users.")
        sign = models.CharAttribute("A sign character such as an emoji to indicate status, or categorization, or label, or importance; this item is intended to be user-visible, and intended to be shown early in an list of items, such as immediately after the primary key id, and before any item title.")
        lock_version = models.IntegerAttribute("This is for optimistic locking.")
        created_at = models.UnknownAttribute("The time when this happened.")
        created_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        updated_at = models.UnknownAttribute("The time when this happened.")
        updated_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        deleted_at = models.UnknownAttribute("The time when this happened.")
        deleted_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        locale_id = models.UnknownAttribute("An international locale identifier, such as the id of locale "English - United States".")
        itemtype = models.UnknownAttribute("A valid URL of a vocabulary that describes the item and its properties context.")
        itemprop = models.TextAttribute("Indicates that its containing tag holds the value of the
specified item property. The property's name and value context
are described by the item's vocabulary. Properties values
usually consist of string values, but can also use URLs using
the a element and its href attribute, the img element and its
src attribute, or other elements that link to or embed external
resources.
")

