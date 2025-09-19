#!/bin/sh
set -euf

class Card(models.Model):
        title = models.UnknownAttribute("The card title, typically displayed in large font size on the card, such as a H1 headline, or a person's name, or a project's title.")
        subtitle = models.UnknownAttribute("The card subtitle, typically displayed medium font size on the card, such as a H2 headline, or a person's handle, or a project's status.")
        summary = models.TextAttribute("None")
        description = models.TextAttribute("None")
        disambiguation = models.TextAttribute("None")
        image_1080x1080_url = models.URLAttribute("An image URL for the item, 1080x1080 pixels, which is square 1:1 aspect ratio.")
        image_1080x1080_alt = models.TextAttribute("An image URL alternative text description")
        emoji = models.TextAttribute("Any emoji related to the item, such as for a badge, or indicator, or expression, etc.")
        star_count = models.IntegerAttribute("A star count from 0-5, such as for a rating, or review, or priority, etc.")

