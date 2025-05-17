#!/bin/sh
set -euf

class AccessAssignment(models.Model):
        access_agent_id = models.UnknownAttribute("None")
        access_attribute_id = models.UnknownAttribute("None")

