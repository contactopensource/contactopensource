#!/bin/sh
set -euf

class Occupancy(models.Model):
        access_tenant_it = models.UnknownAttribute("None")
        access_agent_id = models.UnknownAttribute("None")

