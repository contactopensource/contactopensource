--liquibase formatted sql
-- see: http://www.liquibase.org/

--changeset contact@contactopensource.com:1
--preconditions onFail:HALT onError:HALT
--precondition-sql-check expectedResult:0 SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'item'

-- See these related links:
-- https://schema.org/Person
-- https://schema.org/Organization

create table item (
  id uuid not null primary key,

  -- Tracking-related
  created_at timestamptz, created_by text, -- example: created at 2020-01-01T00:00:00Z by alice.anderson@example.com
  updated_at timestamptz, updated_by text, -- example: created at 2021-01-01T00:00:00Z by alice.anderson@example.com
  proofed_at timestamptz, proofed_by text, -- example: created at 2022-01-01T00:00:00Z by alice.anderson@example.com
  retired_at timestamptz, retired_by text, -- example: created at 2023-01-01T00:00:00Z by alice.anderson@example.com

  -- General-related
  name text, -- example: "Alice Anderson"
  emoji text, -- example: "U+1F60A" is smiling face with smiling eyes
  tags text, -- example: "friend, neighbor, runner" (a commma-separated list)
  note text, -- example: "Alice is a good friend, nearby neighbor, and fast runner."

  -- Display-related
  image_uri text, -- example: "https://example.com/image.jpg"
  color_hex char(6), -- example: "FF0000" is red
  css_class text, -- example: "friend" is a cascading style sheet class (a space-separated list)
  star_count integer, -- example: '5' means 5-star rating

  -- Person-related
  given_name text, -- example: "Alice"
  family_name text, -- example: "Anderson"
  prefix_name text, -- example: "Dr."
  suffix_name text, -- example: "Jr."
  salutation text, -- example: "Dr. Anderson"
  addressee text, -- example: "Dr. Alice Anderson Jr."
  nickname text, -- example: "Ali"
  
  -- Organization-related
  org_name text, -- example: "Acme Company"
  org_team text, -- example: "Department of Widgets"
  org_role text, -- example: "Manager of Quality"
  
  -- Communication-related
  telephone text, -- example: "+18005551212"
  email text, -- example: "alice.anderson@example.com"
  website_uri text, -- example: "https://example.com/alice.anderson"

  -- Place-related
  country text, -- example: "US" is United States
  region text, -- example: "CA" is California (a.k.a. United States state, Canada province, etc.)
  locality text, -- example: "San Francisco" (a.k.a. city, town, etc.)
  neighborhood text, -- example: "Mission District" (a.k.a. city area, town zone, etc.)
  postal_code text, -- example: "94101" is San Francisco downtown area (a.k.a. United States ZIP code, Cananda mail routing number, etc.)
  street_address text, -- example: "123 Main Street"
  premise_address text, -- example: "Apartment A1" (a.k.a. room name, box number, etc.)

  -- Geolocation-related
  latitude numeric(20,12), -- example: '37.8199' is 37.8199° N which is Golden Gate Bridge
  longitude numeric(20,12), -- example: '122.4783' is 122.4783° W (Golden Gate Bridge)
  altitude numeric(20,12), -- example: '67.056' is 67.056 meters to local surface of the earth
  elevation numeric(20,12), -- example: '67.056' is 67.056 meters to global sea level
  global_location_number numeric(13,0), -- see: https://schema.org/globalLocationNumber https://en.wikipedia.org/wiki/Global_Location_Number

  -- Card-related
  vcard text, -- see: https://en.wikipedia.org/wiki/VCard
  hcard text, -- see: https://en.wikipedia.org/wiki/HCard
  xcard xml, -- see: https://tools.ietf.org/html/rfc6351
  jcard jsonb, -- see: https://tools.ietf.org/html/rfc7095

  -- Business-related
  value_added_tax_identification_number text, -- see: https://schema.org/vatID https://en.wikipedia.org/wiki/VAT_identification_number
  legal_entity_identifier char(20), -- see: https://schema.org/leiCode https://en.wikipedia.org/wiki/Legal_Entity_Identifier
  ticker_symbol text, -- see: https://en.wikipedia.org/wiki/Ticker_symbol
  international_standard_of_industrial_classification_rev_4 char(5) -- see: https://schema.org/isicV4 https://en.wikipedia.org/wiki/International_Standard_Industrial_Classification
);

-- Tracking-related
create index idx_created_at on item(created_at); create index idx_created_by on item(created_by);
create index idx_updated_at on item(updated_at); create index idx_updated_by on item(updated_by);
create index idx_proofed_at on item(proofed_at); create index idx_proofed_by on item(proofed_by);
create index idx_retired_at on item(retired_at); create index idx_retired_by on item(retired_by);

-- General-related
create index idx_name on item(name);
create index idx_emoji on item(emoji);
create index idx_tags on item(tags);
create index idx_note on item(note);

-- Display-related
create index idx_image_uri on item(image_uri);
create index idx_color_hex on item(color_hex);
create index idx_css_class on item(css_class);
create index idx_star_count on item(star_count);

-- Person-related
create index idx_given_name on item(given_name);
create index idx_family_name on item(family_name);
create index idx_salutation on item(salutation);
create index idx_addressee on item(addressee);
create index idx_nickname on item(nickname);

-- Organization-related
create index idx_org_name on item(org_name);
create index idx_org_team on item(org_team);
create index idx_org_role on item(org_role);

-- Place-related
create index idx_country on item(country);
create index idx_region on item(region);
create index idx_locality on item(locality);
create index idx_neighborhood on item(neighborhood);
create index idx_postal_code on item(postal_code);
create index idx_street_address on item(street_address);
create index idx_premise_address on item(premise_address);

-- Geolocation-related
create index idx_latitude on item(latitude);
create index idx_longitude on item(longitude);
create index idx_altitude on item(altitude);
create index idx_elevation on item(elevation);

-- Business-related
create index idx_value_added_tax_identification_number on item(value_added_tax_identification_number);
create index idx_legal_entity_identifier on item(legal_entity_identifier);
create index idx_ticker_symbol on item(ticker_symbol);
create index idx_international_standard_of_industrial_classification_rev_4 on item(international_standard_of_industrial_classification_rev_4);

--rollback drop table item;
