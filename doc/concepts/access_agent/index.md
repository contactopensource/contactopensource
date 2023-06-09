# access_agent

For Attribute-Based Access Control (ABAC).

Attributes:

* key : string+


## access_agent_locale

Attributes:

* access_agent_id : access_agent(id)+ -- example: access user for `alice@example.com`.

* locale_id : locale(id)+ -- example: locale for "English / United States"

* name : string+ -- example: "Alice Adams"

* summary : string -- example: "Access user \"Alice Adams\" <alice@example.com>"

* description : text -- example: "Access user \"Alice Adams\" <alice@example.com> https://example.com/alice"

* disambiguation : text -- example: "This text is a disambiguation description that explains the difference between this item and others."
