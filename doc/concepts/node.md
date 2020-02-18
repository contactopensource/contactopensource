# node

The `node` concept is how we store any arbitrary chunk of data.

We track the URI of the data:

* uri ~ text ~ example: "https://example.com/example.txt"

We track the content of the data, by using one or more of these attributess:

* text ~ text ~ example: "hello world"

* json ~ jsonb ~ example: {"hello": "world"}

* xml ~ xml ~ example: "<?xml version=\'1.0\'?><example>hello world</example>"

* number ~ number -- example: 1234.5678

