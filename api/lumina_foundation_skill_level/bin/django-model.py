#!/bin/sh
set -euf

class LuminaFoundationSkillLevel(models.Model):
        number = models.IntegerAttribute("None")
        label = models.TextAttribute("None")
        description = models.TextAttribute("None")

