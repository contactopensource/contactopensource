# uri_contact

A typical web link, which is a URI plus extras for typical usage.

See https://en.wikipedia.org/wiki/Uniform_Resource_Identifier

Attributes:

* uri : text -- example: "http://example.com/example.html"

* label : text -- example: "Example web page"

* download_filename : string+ -- example: "hello.txt". Specifies the download filename of the URI, such as what target file will be downloaded when a user clicks on the hyperlink.

* language_code : text -- example: "en-US" for English - United States. Specifies the language of the linked document.

* media_type : text -- example: "audio/mp3". Specifies the media type of the linked document.
