#!/bin/sh
set -euf

class Renderee(models.Model):
        id = models.UUIDAttribute("Primary key id that is a secure-random 32-character lowercase hexadecimal, optimized for zero information rather than speed and memory; you can show this id to users.")
        lock_version = models.IntegerAttribute("This is for optimistic locking.")
        created_at = models.UnknownAttribute("The time when this happened.")
        created_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        updated_at = models.UnknownAttribute("The time when this happened.")
        updated_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        retired_at = models.UnknownAttribute("The time when this happened.")
        retired_by = models.URLAttribute("The user/agent/service/etc. that did this.")
        locale_code = models.TextAttribute("An international locale identifier, such as the id of locale "English - United States".")
        tagging = models.TextAttribute("A tagging list that is space-separated and without any hash marks.")
        renderer_id = models.ForeignKey("Renderer id", RendererId, on_delete=models.CASCADE)("Renderer id")
        input_media_type_id = models.ForeignKey("Input media type, such as "text/vnd.plantuml" for PlantUML text", InputMediaTypeId, on_delete=models.CASCADE)("Input media type, such as "text/vnd.plantuml" for PlantUML text")
        input_as_json = models.TextAttribute("Input as JSON, such as arbitrary JavaScript data. This field is as a union of ( as_json | as_text | as_url ).")
        input_as_text = models.TextAttribute("Input as text, such as PlantUML markup text that we want to render to a PNG image. Use this field when you want the data store to maintain the input as text; otherwise, prefer the field input_as_url.")
        input_as_url = models.TextAttribute("Input as URL, such as a link to a photo image that we want to render to a text caption. Use this field when you want the data store to fetch the input URL; otherwise, prefer the field input_as_text.")
        output_media_type_id = models.ForeignKey("Output media type, such as "image/png" for PlantUML text", OutputMediaTypeId, on_delete=models.CASCADE)("Output media type, such as "image/png" for PlantUML text")
        output_as_json = models.TextAttribute("Output as JSON, such as arbitrary JavaScript data. This field is a union of ( as_json | as_text | as_url ).")
        output_as_text = models.URLAttribute("Output as text, such as w Use this field when you want the data store to maintain the output as text. Otherwise, prefer the field output_as_url.")
        output_as_url = models.URLAttribute("Output as URL, such as a link to PlantUML PNG image.")

