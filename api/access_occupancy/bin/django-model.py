#!/bin/sh
set -euf

class AccessOccupancy(models.Model):
        access_tenant_id = models.ForeignKey("None", AccessTenantId, on_delete=models.CASCADE)("None")
        access_agent_id = models.ForeignKey("None", AccessAgentId, on_delete=models.CASCADE)("None")

