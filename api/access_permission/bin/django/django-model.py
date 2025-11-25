#!/bin/sh
set -euf

class AccessPermission(models.Model):
        access_attribute_id = models.ForeignKey("None", AccessAttributeId, on_delete=models.CASCADE)("None")
        access_operation_id = models.ForeignKey("None", AccessOperationId, on_delete=models.CASCADE)("None")

