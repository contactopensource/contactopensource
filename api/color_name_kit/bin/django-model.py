#!/bin/sh
set -euf

class ColorNameKit(models.Model):
        id = models.UUIDAttribute("Primary key id that is a secure-random 32-character lowercase hexadecimal, optimized for zero information rather than speed and memory; you can show this id to users.")
        lock_version = models.IntegerAttribute("This is for optimistic locking.")
        created_at = models.UnknownAttribute("None")
        created_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        updated_at = models.UnknownAttribute("None")
        updated_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        retired_at = models.UnknownAttribute("None")
        retired_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        locale_id = models.UnknownAttribute("An international locale identifier, such as the id of locale "English - United States".")
        hex = models.UnknownAttribute("hexadecimal-lowercase six-character code")
        html_color_name = models.TextAttribute("See https://wikipedia.org/wiki/Web_colors#HTML_color_names")
        x11_color_name = models.TextAttribute("See https://en.wikipedia.org/wiki/X11_color_names")
        color_naming_system_name = models.TextAttribute("See https://en.wikipedia.org/wiki/Color_Naming_System")
        pantone_process_color_name = models.TextAttribute("See https://en.wikipedia.org/wiki/Pantone")

