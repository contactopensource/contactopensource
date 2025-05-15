# Database implementation

We use these naming conventions:

* Database name: contactopensource

* Administrator user name: contactopensource_leader

* Read-only user name: contactopensource_reader

* Write-only user name: contactopensource_writer

## Common attributes

Metadata:

* id ~ not null primary key ~ we prefer using a URI (for multi-database projects) or a UUID-4 (for one-database projects).

* updated_at_timestamp_utc: timestamp -- example: 2020-01-01T00:00:00±00:00

* updated_at_clock_count ~ bigint ~ example: 123456789 as suitable for a vector clock

* tenant_id ~ for optional tenant, such as a multi-tenant installation.

* parent_id ~ for optional parent, such as a parent-child tree relationship.

* set_id ~ for optional set, such as a namespace, or categorization, or cluster.

* type_id ~ for optional type, such as a typecast, or single table inheritance.

* state_id ~ for optional state, such as a state machine, or state transition.

## Patterns

* foo_point and foo_point_code ~ we prefer having one item for label-free information (e.g. "FF0000" is the color red) and a different item for the labels (e.g. the code "cherry red" references the point "FF0000").
