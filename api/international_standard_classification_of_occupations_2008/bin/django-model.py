#!/bin/sh
set -euf

class InternationalStandard_ClassificationOfOccupations2008(models.Model):
        group = models.TextAttribute("None")
        code = models.TextAttribute("None")
        title = models.TextAttribute("None")
        definition = models.TextAttribute("None")

