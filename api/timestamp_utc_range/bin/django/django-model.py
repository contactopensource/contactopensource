#!/bin/sh
set -euf

class Timestamp UTC Range(models.Model):
        start = models.UnknownAttribute("start")
        stop = models.UnknownAttribute("stop")
        duration_as_seconds = models.UnknownAttribute("None")

