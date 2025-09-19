#!/bin/sh
set -euf

class UnitedKingdomCivilServiceRatingScale(models.Model):
        rating = models.IntegerAttribute("None")
        label = models.TextAttribute("None")
        definition = models.TextAttribute("None")

