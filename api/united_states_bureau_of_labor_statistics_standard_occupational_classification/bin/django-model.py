#!/bin/sh
set -euf

class None(models.Model):
        group = models.TextAttribute("None")
        code = models.TextAttribute("None")
        title = models.TextAttribute("None")
        definition = models.TextAttribute("None")
