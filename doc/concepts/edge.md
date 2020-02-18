# edge

The `edge` concept is how we link two nodes.

An edge can associate up to three concepts: subject, predicate, object.

This kind of association has similarities to a data "semantic triple",
and the metadata data model Resource Description Framework (RDF).

* See https://en.wikipedia.org/wiki/Semantic_triple

* See https://en.wikipedia.org/wiki/Resource_Description_Framework

Each concept can be a either a URI or a database table name and row id.
This enables links similar to RDF triples or polymorphic joins.

For example, link two URIs anywhere on the internet, such as two people:

* subject_uri: http://example.com/alice-adams.html

* object_uri: http://example.com/bob-brown.html

For example, link from a person's information in this database schema
to an organization's information in this database schema:

* subject_table: persons

* subject_id: 34b75621921fdc7ac83459c5c4b7dba6

* object_table: orgs

* object_id: 9588686d2a1b4cda40cad5269c87a627

For example, link a person in this database schema to an external URI:

* subject_table: persons

* subject_id: 34b75621921fdc7ac83459c5c4b7dba6

* object_uri: http://example.com/bob-brown.html

Each edge row must have a subject and object. 

Each edge row may have a predicate, which is a way to describe the type
of relationship. Common examples we use are "like", "follow", "favorite".

This table has a goal to be fully workable with RDF concepts.

If possible, this table will be improved to use a better way of 
linking to internal data. For example, we would prefer to phase out
the individual fields for table name and row id, and instead simply
use the URI fields along with a URI that points to internal data.
Currently, many tools and frameworks expect separate fields for
the table name and row id, such as to do poly-to-poly joins.

Subject attributes:

* subject_uri ~ text ~ example: http://example.com/alpha.html

* subject_database ~ text ~ database table name; example: "contactopensource"

* subject_schema ~ text ~ database table name; example: "public"

* subject_table ~ text ~ database table name; example: "persons"

* subject_id ~ id ~ database row id; example: 34b75621921fdc7ac83459c5c4b7dba6

Predicate attributes:

* predicate_uri ~ text ~ example: http://example.com/bravo.html

* predicate_database ~ text ~ database table name; example: "contactopensource"

* predicate_schema ~ text ~ database table name; example: "public"

* predicate_table ~ text ~ database table name; example: "likes"

* predicate_id id ~ database row id; example: 124cf87662601612ae47379c91876e1e

Object attributes:

* object_uri ~ text ~ example: http://example.com/charlie.html

* object_database ~ text ~ database table name; example: "contactopensource"

* object_schema ~ text ~ database table name; example: "public"

* object_table ~ text ~ database table name; example: "places"

* object_id id ~ database row id; example: 9588686d2a1b4cda40cad5269c87a627

Lifecycle attributes:

* start_at_timestamp_utc ~ timestamp

* stop_at_timestamp_utc ~ timestamp

Modifier attributes:

* count ~ number ~ count, such as an instance index; example: 10 means count 10

* weight ~ number ~ weight, -1 to 1 inclusive; example: 0.1 means weight 10%

* probability ~ number ~ ~ probability, 0 to 1 inclusive; example: 0.1 means probability 10%
