# access_attribute

For Attribute-Based Access Control (ABAC).

Attributes:

* key : string+


## access_attribute_locale

Attributes:

* access_attribute_id : access_attribute(id)+ -- example: access attribute for `reader`.

* locale_id : locale(id)+ -- example: locale for "English - United States"

* name : string+ -- example: "reader"

* summary : string -- example: "Access attribute 'reader' provides read access"

* description : text -- example: "Access attribute 'reader' provides read access, such as for show, view, list, etc."

* disambiguation : text -- example: "This text is a disambiguation description that explains the difference between this item and others."
