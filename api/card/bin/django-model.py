#!/bin/sh
set -euf

class Card(models.Model):
        name = models.UnknownAttribute("The card name a.k.a. card title, typically displayed in large font size on the card, such as a H1 headline, or a person's name.")
        subname = models.UnknownAttribute("The card subname a.k.a. card subtitle, typically displayed medium font size on the card, such as a H2 headline, or a person's handle.")
        summary = models.UnknownAttribute("None")
        description = models.TextAttribute("None")
        disambiguation = models.TextAttribute("None")
        sign = models.UnknownAttribute("An option one-character sign, such as an emoji indicator.")
        kind = models.TextAttribute("A category class, such as a useful way to sort or subset the resource.")
        avatar_image_400x400_url = models.URLAttribute("An avatar image for the item, 400x400 pixels, which is square 1:1 aspect ratio and the same size as other popular social networks, and will look good within a circle mask, as a URL.")
        avatar_image_400x400_alt = models.URLAttribute("An avatar image for the item, 400x400 pixels, which is square 1:1 aspect ratio and the same size as other popular social networks, and will look good within a circle mask, as an alternate text description.")
        main_image_1080x1080_url = models.URLAttribute("A main image for the item, 1080x1080 pixels, which is square 1:1 aspect ratio, as a URL.")
        main_image_1080x1080_alt = models.TextAttribute("A main image for the item, 1080x1080 pixels, which is square 1:1 aspect ratio, as an alternate text description.")
        main_image_1920x1080_url = models.URLAttribute("A main image for the item, 1920x1080 pixels, which is landscape aspect ratio, as a URL.")
        main_image_1920x1080_alt = models.TextAttribute("A main image for the item, 1920x1080 pixels, which is landscape aspect ratio, as an alternate text description.")
        main_image_1080x1920_url = models.URLAttribute("A main image for the item, 1920x1080 pixels, which is landscape aspect ratio, as a URL.")
        main_image_1080x1920_alt = models.TextAttribute("A main image for the item, 1920x1080 pixels, which is landscape aspect ratio, as an alternate text description.")
        emoji = models.TextAttribute("Any emoji related to the item, such as for a badge, or indicator, or expression, etc.")
        star_count = models.IntegerAttribute("A star count from 0-5, such as for a rating, or review, or priority, etc.")
        quick_response_code_id = models.ForeignKey("A quick-response (QR) code that uniquely identifies this card.", QuickResponseCodeId, on_delete=models.CASCADE)("A quick-response (QR) code that uniquely identifies this card.")
        universal_product_code_id = models.ForeignKey("A universal product code (UPC) that uniquely identifies this card.", UniversalProductCodeId, on_delete=models.CASCADE)("A universal product code (UPC) that uniquely identifies this card.")

