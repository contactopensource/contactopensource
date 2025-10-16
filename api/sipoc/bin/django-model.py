#!/bin/sh
set -euf

class Sipoc(models.Model):
        id = models.UUIDAttribute("Primary key id that is a secure-random 32-character lowercase hexadecimal, optimized for zero information rather than speed and memory; you can show this id to users.")
        lock_version = models.IntegerAttribute("This is for optimistic locking.")
        created_at = models.UnknownAttribute("The time when this happened.")
        created_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        updated_at = models.UnknownAttribute("The time when this happened.")
        updated_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        deleted_at = models.UnknownAttribute("The time when this happened.")
        deleted_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        locale_code = models.TextAttribute("An international locale identifier, such as the id of locale "English - United States".")
        tagging = models.TextAttribute("A tagging list that is space-separated and without any hash marks.")
        suppliers_as_url = models.URLAttribute("Suppliers Inputs Processes Outputs Customers (SIPOC) suppliers description as URL")
        suppliers_as_markdown = models.UnknownAttribute("Suppliers Inputs Processes Outputs Customers (SIPOC) suppliers description as markdown")
        inputs_as_url = models.URLAttribute("Suppliers Inputs Processes Outputs Customers (SIPOC) inputs description as URL")
        inputs_as_markdown = models.UnknownAttribute("Suppliers Inputs Processes Outputs Customers (SIPOC) inputs description as markdown")
        processes_as_url = models.URLAttribute("Suppliers Inputs Processes Outputs Customers (SIPOC) processes description as URL")
        processes_as_markdown = models.UnknownAttribute("Suppliers Inputs Processes Outputs Customers (SIPOC) processes description as markdown")
        outputs_as_url = models.URLAttribute("Suppliers Inputs Processes Outputs Customers (SIPOC) outputs description as URL")
        outputs_as_markdown = models.UnknownAttribute("Suppliers Inputs Processes Outputs Customers (SIPOC) outputs description as markdown")
        customers_as_url = models.URLAttribute("Suppliers Inputs Processes Outputs Customers (SIPOC) customers description as URL")
        customers_as_markdown = models.UnknownAttribute("Suppliers Inputs Processes Outputs Customers (SIPOC) customers description as markdown")

