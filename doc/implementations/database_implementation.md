# Database implementation

We use these naming conventions:

* Database name: contactopensource

* Administrator user name: contactopensource_administrator

* Read-only user name: contactopensource_reader


## Common fields

Programming-related:

* id ~ not null primary key ~ we prefer using a ZID, which is a 32-bit secure random number, similar to a UUID-4.

* tenant_id ~ id ~ for optional multi-tenant installation

* type_name ~ text ~ for optional type identification, such as a source code class name

* type_uri ~ uri ~ for optional type identification, such as a graph database schema URI

* state ~ text ~ for optional state machine transition

Update-related:

* updated_at_timestamp_utc ~ timestamp ~ example: 2020-01-01T00:00:00±00:00

* updated_at_clock_count ~ bigint ~ example: 123456789 as suitable for a vector clock

* updated_by_text ~ text ~ example: explanation of who updated the contact, why, how, etc.

