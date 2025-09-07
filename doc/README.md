# Documentation

Contents:
* [](#)
## Introduction

ContactOpenSource is software that helps you manage contact information lists, such as people you know, and their email addresses, phone numbers, web links, and more.

ContactOpenSource is free libre open source software (FLOSS) and developed entirely by volunteers. We welcome help, ideas, sharing, and donations.

We use these categories:

1. Connections: node, edge.

2. Nouns: organization, person, place, thing, event, etc.

3. Annotations: tag, code, locale, media type, geographic point, etc.

4. Contacts: email contact, phone contact, postal contact, etc.

5. Details: personal name, personal pronoun, etc.

## Codes

Codes are ways to categorize nodes and classify them. We want to provide many kinds of codes.

### Geo codes

* [Open Location Code](https://github.com/google/open-location-code)

* [What Three Words](https://what3words.com)

* [What Free Words](https://whatfreewords.org)
### Business codes

Codes that are typically for business organizations:

* value_added_tax_identification_number. See: https://schema.org/vatID https://wikipedia.org/wiki/VAT_identification_number

* legal_entity_identifier. See: https://schema.org/leiCode https://wikipedia.org/wiki/Legal_Entity_Identifier

* ticker_symbol. See: https://wikipedia.org/wiki/Ticker_symbol

* international_standard_of_industrial_classification_rev_4_code. See https://schema.org/isicV4 https://wikipedia.org/wiki/International_Standard_Industrial_Classification

### TODO

* ISO 15511:2011 = Information and documentation — International standard identifier for libraries and related organizations (ISIL)
## Schema

All tables have these metadata columns:

```sql
CREATE TABLE `examples` (
    id uuid not null primary key,

    -- Update-related
    updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
    updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock

    -- Programming-related
    tenant_id uuid, -- for optional multi-tenant installation
    type_id text, -- for optional single table inheritance
    state_id text, -- for optional state machine transition

    -- Meta-related -- the intent is to describe the content attributes below.
    uri text, -- example: 'https://example.com/example.txt'

    …
);
```
### nodes

```sql
CREATE TABLE `nodes` (
    …
    -- Content-related -- intended as a mutex of available database types
    text text, -- example: 'hello world'
    json jsonb, -- example: '{"hello": "world"}'
    xml xml -- example: '<?xml version=\'1.0\'?><example>hello world</example>'
);
```

### edges

The 'edges' table is a kind of linking table with special capabilties.

An edge row can associate up to three concepts: subject, predicate, object.

This kind of association has similarities to a data "semantic triple",
and the metadata data model Resource Description Framework (RDF).

*  See https://en.wikipedia.org/wiki/Semantic_triple

*  See https://en.wikipedia.org/wiki/Resource_Description_Framework

Each concept can be a either a URI or a database table name and row id.
This enables links similar to RDF triples or polymorphic joins.

 For example, link two URIs anywhere on the internet, such as two people:

*  subject_uri: http://example.com/alice-adams.html

*  object_uri: http://example.com/bob-brown.html

For example, link from a person's information in this database schema
to an organization's information in this database schema:

*  subject_table: persons

*  subject_id: 34b75621921fdc7ac83459c5c4b7dba6

*  object_table: orgs

*  object_id: 9588686d2a1b4cda40cad5269c87a627

For example, link a person in this database schema to an external URI:

*  subject_table: persons

*  subject_id: 34b75621921fdc7ac83459c5c4b7dba6

*  object_uri: http://example.com/bob-brown.html

Each edge row must have a subject and object.

Each edge row may have a predicate, which is a way to describe the type
of relationship. Common examples we use are "like", "follow", "favorite".

This table has a goal to be fully workable with RDF concepts.

If possible, this table will be improved to use a better way of
linking to internal data. For example, we would prefer to phase out
the individual attributes for table name and row id, and instead simply
use the URI attributes along with a URI that points to internal data.
Currently, many tools and frameworks expect separate attributes for
the table name and row id, such as to do poly-to-poly joins.

```sql
CREATE TABLE `edges` (
    …
    -- Subject
    subject_uri text, -- example: http://example.com/alpha.html
    subject_database text, -- database table name; example: 'contactopensource'
    subject_schema text, -- database table name; example: 'public'
    subject_table text, -- database table name; example: 'persons'
    subject_id uuid, -- database row id; example: 34b75621921fdc7ac83459c5c4b7dba6

    -- Predicate
    predicate_uri text, -- example: http://example.com/bravo.html
    predicate_database text, -- database table name; example: 'contactopensource'
    predicate_schema text, -- database table name; example: 'public'
    predicate_table text, -- database table name; example: 'likes'
    predicate_id uuid, -- database row id; example: 124cf87662601612ae47379c91876e1e

    -- Object
    object_uri text, -- example: http://example.com/charlie.html
    object_database text, -- database table name; example: 'contactopensource'
    object_schema text, -- database table name; example: 'public'
    object_table text, -- database table name; example: 'orgs'
    object_id uuid, -- database row id; example: 9588686d2a1b4cda40cad5269c87a627

    -- Lifecycle
    start_at_timestamp_utc timestamp,
    stop_at_timestamp_utc timestamp,

    -- Modifiers
    count bigint, -- count, such as an instance index; example: 10 means count 10
    weight numeric(10,9), -- weight, -1 to 1 inclusive; example: 0.1 means weight 10%
    unit_interval numeric(10,9), -- unit interval, 0 to 1 inclusive; example: 0.1 means unit interval 10%
    dual_interval numeric(10,9) -- dual interval, -1 to 1 inclusive; example: -0.1 means dual interval -10%
);
```
### orgs

```sql
CREATE TABLE `orgs` (
    …
    -- General-related
    name text, -- example: 'Acme Agency'
    emoji text, -- example: 'U+1F60A' is smiling face with smiling eyes

    -- Display-related
    image_uri text, -- example: 'https://example.com/image.jpg'
    color_hex text, -- example: 'FF0000' is red
    css_class text, -- example: 'friend' is a cascading style sheet class (a space-separated list)
    star_count int2, -- example: '5' means 5-star rating

    -- Lifetime-related
    start_date date, -- example: '2000-01-01'
    stop_date date, -- example: '2099-01-01'

    -- Business-related
    value_added_tax_identification_number text, -- see: https://schema.org/vatID https://wikipedia.org/wiki/VAT_identification_number
    legal_entity_identifier char(20), -- see: https://schema.org/leiCode https://wikipedia.org/wiki/Legal_Entity_Identifier
    ticker_symbol text, -- see: https://wikipedia.org/wiki/Ticker_symbol
    international_standard_of_industrial_classification_rev_4_code char(5) -- see: https://schema.org/isicV4 https://wikipedia.org/wiki/International_Standard_Industrial_Classification
);
```
### persons

```sql
CREATE TABLE `persons` (
    …
    -- Lifetime-related
    birth_date date, -- example: '2000-01-01'
    death_date date, -- example: '2099-01-01'

    -- Physical-related
    mass_as_grams numeric(12,9), -- example: TODO
    height_as_meters numeric(10,9), -- example: TODO

    -- Org-related
    org_name text, -- example: 'Acme Company'
    org_team text, -- example: 'Department of Widgets'
    org_role text -- example: 'Manager of Widgets'
);
```
### person_names

```sql
CREATE TABLE `person_names` (
    …
    -- Name-related
    given_name text, -- example: 'Alice'
    given_name_phonetic text, -- example: 'Alice'
    middle_name text, -- example: 'Amy'
    middle_name_phonetic text, -- example: 'Amy'
    family_name text, -- example: 'Adams'
    family_name_phonetic text, -- example: 'Adams'
    legal_name text, -- example: 'Alice Amy Adams'
    legal_name_phonetic text, -- example: 'Alice Amy Adams'
    prefix_name text, -- example: 'Dr.'
    prefix_name_phonetic text, -- example: 'Dr.'
    suffix_name text, -- example: 'Jr.'
    suffix_name_phonetic text, -- example: 'Jr.'
    salutation_name text, -- example: 'Doctor Adams'
    salutation_name_phonetic text, -- example: 'Doctor Adams'
    addressee_name text, -- example: 'Dr. Alice Adams Jr.'
    addressee_name_phonetic text, -- example: 'Dr. Alice Adams Jr.'
    nickname text, -- example: 'Ali'
    nickname_phonetic text, -- example: 'Ali'

    -- Pronoun-related
    subject_pronoun text, -- example: 'she' as in 'She likes Alice.'; see: https://wikipedia.org/wiki/Subject_pronoun
    object_pronoun text, -- example: 'her' as in 'Alice likes her.'; see: https://wikipedia.org/wiki/Object_pronoun
    dependent_possessive_pronoun text, -- example: 'her' as in 'Her ideas are good.'; see: https://wikipedia.org/wiki/Possessive_pronoun
    independent_possessive_pronoun text, -- example: 'hers' as in 'The ideas are hers.'; see: https://wikipedia.org/wiki/Possessive_determiner
    reflexive_pronoun text, -- example: 'herself' as in 'She likes herself'; see https://wikipedia.org/wiki/Reflexive_pronoun
    intensive_pronoun text, -- example: 'herself' as in 'She does it herself.'; see: https://en.wikipedia.org/wiki/Intensive_pronoun
    disjunctive_pronoun text -- example: 'her' as in 'It is her.'; see https://wikipedia.org/wiki/Disjunctive_pronoun
);
```
### places

```sql
CREATE TABLE `places` (
    …
    -- General-related
    name text -- example: 'Grand Central in New York City'
);
```
### things

```sql
CREATE TABLE `things` (
    …
    -- General-related
    name text -- example: 'tool'
);
```
### events

```sql
CREATE TABLE `events` (
    …
    -- General-related
    name text, -- example: 'Acme Agency'

    -- Lifetime-related
    start_timestamp_utc timestamp, --  example: 2020-01-01T00:00:00 always UTC
    stop_timestamp_utc timestamp, --  example: 2020-01-01T00:00:00 always UTC
    duration_as_seconds numeric(20,9) -- example: 3600 seconds is 1 hour
```
### uri_contacts

```sql
CREATE TABLE `uri_contacts` (
    …
    -- Link-related
    label text, -- example: 'Example web page'
    uri text -- example: 'http://example.com/example.html'
```
### email_contacts

```sql
CREATE TABLE `email_contacts` (
    …
    -- Email-related
    address text, -- example: 'Alice Adams <alice@example.com>' -- see https://tools.ietf.org/html/rfc5322
    display_name text, -- example: 'Alice Adams'
    addr_spec text -- example: 'alice@example.com'
);
```
### phone_contacts

```sql
CREATE TABLE `phone_contacts` (
    …
    -- Telephone-related
    label text, -- example: 'mobile phone'
    number_text text, -- example: '1 (415) 555-0000'

    -- E.164-related -- see https://en.wikipedia.org/wiki/E.164
    e164_text varchar(15), -- example: '14155550000' means United States country code, San Franicsco area code, etc.
    e164_country_code varchar(3), -- example: '1' means United States -- see https://en.wikipedia.org/wiki/E.164
    e164_national_destination_code varchar(13), -- example: '415' is the United States area code of San Francisco
    e164_group_identification_code varchar(4), -- example: TODO
    e164_trial_identification_code varchar(3), -- example: TODO
    e164_subscriber_number varchar(14) -- example: '5550000' -- see https://en.wikipedia.org/wiki/E.164
```
### postal_contacts

```sql
CREATE TABLE `postal_contacts` (
    …
    -- Postal-related
    country_text text, -- example: 'US' is United States
    region_text text, -- example: 'CA' is California (a.k.a. United States state, Canada province, etc.)
    locality_text text, -- example: 'San Francisco' (a.k.a. city, town, etc.)
    neighborhood_text text, -- example: 'Mission District' (a.k.a. city area, town zone, etc.)
    postal_code_text text, -- example: '94101' is San Francisco downtown area (a.k.a. United States ZIP code, Canada mail routing number, etc.)
    street_address_text text, -- example: '123 Main Street'
    premise_address_text text, -- example: 'Apartment A1' (a.k.a. room name, box number, etc.)
    global_location_number_text text -- see: https://schema.org/globalLocationNumber https://en.wikipedia.org/wiki/Global_Location_Number
);
```
### passport_credentials

```sql
CREATE TABLE `passport_credentials` (
    …
    -- Place-related
    country_text text, -- example: 'US' is United States
    number_text text, -- example: '000-000-000-000'

    -- Time-related
    valid_start_date date, -- example: 2020-01-01
    valid_stop_date date -- example: 2030-01-01
);
```
### contacts

```sql
CREATE TABLE `contacts` (
    …
    -- General-related
    name text, -- example: 'Alice Adams'
    emoji text, -- example: 'U+1F60A' is smiling face with smiling eyes

    -- Display-related
    image_uri text, -- example: 'https://example.com/image.jpg'
    color_hex text, -- example: 'FF0000' is red
    css_class text, -- example: 'friend' is a cascading style sheet class (a space-separated list)
    star_count int2 -- example: '5' means 5-star rating
);
```
### passport_credentials

```sql
CREATE TABLE `passport_credentials` (
    …
    -- Tag-related
    text text -- example: 'trending'
);
```
### locales

```sql
CREATE TABLE `locales` (
    …
    -- Code-related
    text text, -- example: 'en-US' is English language in United States country
    language_code text, -- example: 'en' is English
    country_code text, -- example: 'US' is United States
    script_code text, -- example: 'Latn' is Latin script; see http://www.unicode.org/iso15924/codelists.html
    region_code text, -- example: 'QO' is Outlying Oceania
    variant_code text, -- example: 'TH' is Thai digit shapes

    -- Representation-related
    decimal_separator text, -- example: '.' is the decimal separator of 'en-US'
    grouping_separator text, -- example: ',' is the grouping separator of 'en-US'
    currency_code text, -- example: 'USD' is United States Dollar
    currency_symbol text, -- example: '$' is United States Dollar
    quotation_start_delimiter text, -- example: '“' (U+201C) is left double quotation mark
    quotation_stop_delimiter text -- example: '”' (U+201D) is right double quotation mark

    -- TODO
    -- calendar: Calendar? -- The calendar for the locale, or the Gregorian calendar as a fallback.
    -- exemplar_character_set: CharacterSet? -- The exemplar character set for the locale, or nil if has none.
    -- collation_dentifier: String? -- The collation identifier for the locale, or nil if it has none.
    -- collator_identifier: String? -- The collator identifier of the locale.
    -- usesMetricSystem: Bool -- A Boolean that is true if the locale uses the metric system.
);
```
### media_types

Media types are also known and MIME types.

See https://en.wikipedia.org/wiki/Media_type

This table is baed on IANA media type standard.

Examples:

    text/plain
    image/jpg

Example tree nodes:

    application/x.foo (the 'x' tree means unregistered)
    application/vnd.foo (the 'vnd' tree means vendor)

Example suffix nodes:

    application/foo+json (the '+json' means JSON format)
    application/foo+xml (the '+xml' means XML format)

Example parameter nodes:

    charset=UTF-8
    boundary=something

Example that uses all of the above:

     application/x.foo+json;charset=UTF-8;boundary=something

```sql
CREATE TABLE `media_types` (
    …
    -- Media-related
    text text, -- example: 'application/x.foo;charset=UTF-8'
    supertype text, -- example: 'text'
    subtype text, -- example 'plain'
    tree text, -- example: 'x.' means unregistered
    suffix text, -- example: '+zip' means ZIP compressed file
    parameters text[] -- example: 'charset=UTF-8',
);
```
### geography_points

```sql
CREATE TABLE `geography_points` (
    …
    -- Geo-related
    latitude numeric(12,9), -- example: '37.8199' is 37.8199° N which is Golden Gate Bridge
    longitude numeric(12,9), -- example: '122.4783' is 122.4783° W (Golden Gate Bridge)
    altitude numeric(20,9), -- example: '67.056' is 67.056 meters to local surface of the earth
    elevation numeric(20,9) -- example: '67.056' is 67.056 meters to global sea level
);
```
### geography_point_centers

```sql
CREATE TABLE `geography_point_centers` (
    …
    -- Code-related
    coder_id uuid, -- example: fda15956587d3766862f72fe5ab1feea is Open Location Code
    text text, -- example: '6GCRPR6C+24' is Open Location Code geolocation demo area
    latitude numeric(12,9), -- example: '37.8199' is 37.8199° N which is Golden Gate Bridge
    longitude numeric(12,9), -- example: '122.4783' is 122.4783° W (Golden Gate Bridge)
    altitude numeric(20,9), -- example: '67.056' is 67.056 meters to local surface of the earth
    elevation numeric(20,9) -- example: '67.056' is 67.056 meters to global sea level
);
```
### isicv4s

```sql
CREATE TABLE `isicv4s` (
    …
    -- Code-related
    --  International Standard of Industrial Classification Rev 4
    -- see: https://schema.org/isicV4
    -- see: https://wikipedia.org/wiki/International_Standard_Industrial_Classification

    -- ISIC-related
    code varchar(5), -- example: 'A' is name 'Agriculture, forestry and fishing'
    name text -- example: 'Agriculture, forestry and fishing' is code 'A'
);
```

## Range

In our work, we use the term "Range" to mean a lower bound and upper bound.

* We're making a pragmatic choice favoring everyday developers.

* We're not making a purist choice for computer scientists or statisticians.

Be aware in computer science, the term range may refer to one of three things:

* The possible values that may be stored in a variable.

* The upper and lower bounds of a group.

* An alternative to iterator.

Be aware in statistics, the term range refers to:

* The difference between the lower bound and upper bound.
