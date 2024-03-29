# media_type

A `media_type` is an internet standard for identifying content such as text, images, videos, etc.

Media types are also known and MIME types.

See https://en.wikipedia.org/wiki/Media_type

This table is baed on IANA media type standard.

Examples:

* text/plain

* image/jpg

Example tree nodes:

* application/x.foo (the 'x' tree means unregistered)

* application/vnd.foo (the 'vnd' tree means vendor)

Example suffix nodes:

* application/foo+json (the '+json' means JSON format)

* application/foo+xml (the '+xml' means XML format)

Example parameter nodes:

* charset=UTF-8

* boundary=something

Example that uses all of the above:

* application/x.foo+json;charset=UTF-8;boundary=something

Attributes:

* code : string+ -- example: "application/x.foo;charset=UTF-8"

* supertype : string -- example: "text"

* subtype : string -- example: "plain"

* tree : string -- example: "x." means unregistered

* suffix : string -- example: "+zip' means ZIP compressed file

* parameter_text : string -- example: "charset=UTF-8;boundary=something"
