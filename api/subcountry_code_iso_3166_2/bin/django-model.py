#!/bin/sh
set -euf

class SubcountryCodeIso3166Dash2(models.Model):
        alpha_2:string(2) = models.TextAttribute("TODO")
        country_code_iso_3166_1_id = models.UnknownAttribute("None")

