#!/bin/sh
set -euf

class locale(models.Model):
        id = models.UUIDAttribute("Primary key id that is a secure-random 32-character lowercase hexadecimal, optimized for zero information rather than speed and memory; you can show this id to users.")
        lock_version = models.UnknownAttribute("This is for optimistic locking.")
        created_at = models.UnknownAttribute("None")
        created_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        updated_at = models.UnknownAttribute("None")
        updated_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        retired_at = models.UnknownAttribute("None")
        retired_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        locale_id = models.UnknownAttribute("An international locale identifier, such as the id of locale "English - United States".")
        text = models.TextAttribute("text")
        language_code = models.TextAttribute("language code")
        country_code = models.TextAttribute("country code")
        script_code = models.TextAttribute("See http://www.unicode.org/iso15924/codelists.html")
        region_code = models.TextAttribute("region code")
        variant_code = models.TextAttribute("variant code")
        decimal_separator = models.TextAttribute("See https://en.wikipedia.org/wiki/Decimal_separator")
        grouping_separator = models.TextAttribute("grouping separator")
        currency_code = models.TextAttribute("currency code")
        currency_symbol = models.TextAttribute("currency symbol")
        quotation_start_delimiter = models.TextAttribute("quotation start delimiter")
        quotation_stop_delimiter = models.TextAttribute("quotation stop delimiter")

