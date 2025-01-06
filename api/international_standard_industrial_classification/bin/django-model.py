#!/bin/sh
set -euf

class InternationalStandardIndustrialClassification(models.Model):
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
        title = models.UnknownAttribute("The card title, typically displayed in large font size on the card, such as a H1 headline, or a person's name, or a project's title.")
        subtitle = models.UnknownAttribute("The card subtitle, typically displayed medium font size on the card, such as a H2 headline, or a person's handle, or a project's status.")
        summary = models.TextAttribute("None")
        description = models.TextAttribute("None")
        disambiguation = models.TextAttribute("None")
        image_1024x1024_url = models.URLAttribute("An image URL for the item, 1024x1024 pixels, which is square 1:1 aspect ratio.")
        image_1024x1024_alt = models.TextAttribute("An image URL alternative text description")
        emoji = models.TextAttribute("Any emoji related to the item, such as for a badge, or indicator, or expression, etc.")
        star_count = models.IntegerAttribute("A star count from 0-5, such as for a rating, or review, or priority, etc.")
        key = models.TextAttribute("None")

