# microdata_item

Specification for identifying content such as text, images, videos, etc. 

See https://en.wikipedia.org/wiki/Microdata_(HTML)

Attributes:

* itemtype: URL --  A valid URL of a vocabulary that describes the item and its properties context. Example: "http://schema.org/Person"

* itemprop: text -- Indicates that its containing tag holds the value of the specified item property. The property's name and value context are described by the item's vocabulary. Properties values usually consist of string values, but can also use URLs using the a element and its href attribute, the img element and its src attribute, or other elements that link to or embed external resources. Example: "name".
