# access_tenant

For Attribute-Based Access Control (ABAC).

Attributes:

* key : string+


## access_tenant_locale

Attributes:

* access_tenant_id : access_tenant(id)+ -- example: access tenant for "ACME Organization".

* locale_id : locale(id)+ -- example: locale for "English / United States"

* name : string+ -- example: "ACME Organization"

* summary : string -- example: "Access tenant \"ACME Organization\" https://acme.example.com"

* description : text -- example: "Access tenant \"ACME Organization\" https://acme.example.com at 123 Main Street, San Francisco, CA, US"

* disambiguation : text -- example: "This text is a disambiguation description that explains the difference between this item and others."
