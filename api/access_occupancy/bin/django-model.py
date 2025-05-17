#!/bin/sh
set -euf

class AccessOccupancy(models.Model):
        access_tenant_id = models.UnknownAttribute("None")
        access_agent_id = models.UnknownAttribute("None")

