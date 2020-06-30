# contact_email

A typical email address, with optional attributes for internet RFC standards.

See https://en.wikipedia.org/wiki/Email_address

See https://tools.ietf.org/html/rfc5322

Attributes:

* address: text -- example: "alice@example.com"

RFC attributes:

* rfc_address: text -- example: "Alice Adams <alice@example.com>"

* rfc_display_name: text -- example: "Alice Adams"

* rfc_local_part: text -- example: "alice" ~ this is case sensitive, and may contain subparts

* rfc_domain ~ text example: "example.com" ~ this is case insensitive, and is a hostname

* rfc_addr_spec: text -- example: "alice@example.com"
