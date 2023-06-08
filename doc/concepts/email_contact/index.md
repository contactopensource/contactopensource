# email_contact

A typical email address.

See https://en.wikipedia.org/wiki/Email_address

See https://tools.ietf.org/html/rfc5322

Attributes as per RFC 5322:

* address : text -- example: "Alice Adams <alice@example.com>"

* display_name : string+ -- example: "Alice Adams"

* local_part : text -- example: "alice" ~ this is case sensitive, and may contain subparts

* domain : text -- example: "example.com" ~ this is case insensitive, and is a hostname

* addr_spec : text -- example: "alice@example.com"
