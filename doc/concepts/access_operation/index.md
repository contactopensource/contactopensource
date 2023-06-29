# access_operation

For Attribute-Based Access Control (ABAC).

Attributes:

* key : string+


## access_operation_locale

Attributes:

* access_operation_id : access_operation(id)+ -- example: access operation for "read".

* locale_id : locale(id)+ -- example: locale for "English - United States"

* name : string+ -- example: "read"

* summary : string -- example: "Access operation \"read\" provides read access"

* description : text -- example: "Access operation \"read\" provides read access, such as for show, view, list, etc."

* disambiguation : text -- example: "This text is a disambiguation description that explains the difference between this item and others."
