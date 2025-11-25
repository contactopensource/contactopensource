#!/bin/sh
set -euf

class AccessAssignment(models.Model):
        access_agent_id = models.ForeignKey("None", AccessAgentId, on_delete=models.CASCADE)("None")
        access_attribute_id = models.ForeignKey("None", AccessAttributeId, on_delete=models.CASCADE)("None")

