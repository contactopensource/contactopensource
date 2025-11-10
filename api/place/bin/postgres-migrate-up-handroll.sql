CREATE TABLE place (
  --- meta
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  updated_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  retired_at TIMESTAMP(6) WITH TIME ZONE,
  locale_code text,
  parent_id uuid CONSTRAINT place_parent_id_fk REFERENCES place (id),
  parent_order int CONSTRAINT place_parent_order_check CHECK (parent_order >= 0),
  --- card
  name text,
  sign text CONSTRAINT place_sign_check CHECK (LENGTH(sign) = 1),
  status text,
  tagging text,
  note text,
  -- ai
  ai_agent_instructions_as_url text CONSTRAINT place_ai_agent_instructions_as_url CHECK (ai_agent_instructions_as_url ~* '^https://'),
  ai_agent_instructions_as_markdown text,
  --- contact
  web text CONSTRAINT place_web_check CHECK (web ~* '^https://'),
  email text CONSTRAINT place_email_check CHECK (email ~*  '.@.'),
  phone text,
  chat text,
  calendar text,
  postal text,
  rdf_type text,
  --- social
  bluesky_as_url text CONSTRAINT place_bluesky_as_url_check CHECK (bluesky_as_url ~* '^https://bsky\.app/'),
  codeberg_as_url text CONSTRAINT place_codeberg_as_url_check CHECK (codeberg_as_url ~* '^https://codeberg\.org/'),
  facebook_as_url text CONSTRAINT place_facebook_as_url_check CHECK (facebook_as_url ~* '^https://facebook\.com/'),
  github_as_url text CONSTRAINT place_github_as_url_check CHECK (github_as_url ~* '^https://github\.com/'),
  instagram_as_url text CONSTRAINT place_instagram_as_url_check CHECK (instagram_as_url ~* '^https://instagram\.com/'),
  linkedin_as_url text CONSTRAINT place_linkedin_as_url_check CHECK (linkedin_as_url ~* '^https://linkedin\.com/'),
  mastodon_as_url text CONSTRAINT place_mastodon_as_url_check CHECK (mastodon_as_url ~* '^https://'),
  orcid_as_url text CONSTRAINT place_orcid_as_url_check CHECK (orcid_as_url ~* '^https://orcid\.org/'),
  tiktok_as_url text CONSTRAINT place_tiktok_as_url_check CHECK (tiktok_as_url ~* '^https://tiktok\.com/'),
  wikipedia_as_url text CONSTRAINT place_wikipedia_uri_check CHECK (wikipedia_as_url ~* '^https://wikipedia\.org/'),
  youtube_as_url text CONSTRAINT place_youtube_as_url_check CHECK (youtube_as_url ~* '^https://youtube\.com/'),
  --- location
  location_iso_3166_1_alpha_2 char(2) CONSTRAINT place_location_iso_3166_1_alpha_2_check CHECK (location_iso_3166_1_alpha_2 ~* '^[a-z][a-z]$'),
  location_iso_3166_2 text,
  location_postal_code text,
  location_latitude_as_decimal_degrees numeric(9, 7) CONSTRAINT place_location_latitude_as_decimal_degrees_check CHECK (location_latitude_as_decimal_degrees BETWEEN -90.0 AND 90.0),
  location_longitude_as_decimal_degrees numeric(10, 7) CONSTRAINT place_location_longitude_as_decimal_degrees_check CHECK (location_longitude_as_decimal_degrees BETWEEN -180.0 AND 180.0),
  location_altitude_agl_as_meters numeric(5,0),
  location_altitude_msl_as_meters numeric(5,0),
  location_elevation_agl_as_meters numeric(5,0),
  location_elevation_msl_as_meters numeric(5,0),
  location_what3words text,
  location_whatfreewords text,
  --- images
  avatar_image_400x400_url text CONSTRAINT place_avatar_image_400x400_url_check CHECK (avatar_image_400x400_url ~* '^https://'),
  avatar_image_400x400_alt text,
  main_image_1080x1080_url text CONSTRAINT place_main_image_1080x1080_url_check CHECK (main_image_1080x1080_url ~* '^https://'),
  main_image_1080x1080_alt text,
  main_image_1920x1080_url text CONSTRAINT place_main_image_1920x1080_url_check CHECK (main_image_1920x1080_url ~* '^https://'),
  main_image_1920x1080_alt text,
  main_image_1080x1920_url text CONSTRAINT place_main_image_1080x1920_url_check CHECK (main_image_1080x1920_url ~* '^https://'),
  main_image_1080x1920_alt text
);

CREATE TRIGGER trigger_place_updated_at
  BEFORE UPDATE ON place
  FOR EACH ROW EXECUTE FUNCTION
  trigger_updated_at();

CREATE INDEX place_index_gto
  ON place USING GIN ((
    sign
      || ' ' || name
      || ' ' || status
      || ' ' || tagging
      || ' ' || note
      || ' ' || ai_agent_instructions_as_markdown
      || ' ' || web
      || ' ' || email
      || ' ' || phone
      || ' ' || chat
      || ' ' || calendar
      || ' ' || postal
      || ' ' || rdf_type
      || ' ' || bluesky_as_url
      || ' ' || codeberg_as_url
      || ' ' || github_as_url
      || ' ' || instagram_as_url
      || ' ' || linkedin_as_url
      || ' ' || mastodon_as_url
      || ' ' || orcid_as_url
      || ' ' || tiktok_as_url
      || ' ' || wikipedia_as_url
      || ' ' || youtube_as_url
) gin_trgm_ops);

CREATE INDEX place_created_at_index ON place (created_at);
CREATE INDEX place_updated_at_index ON place (updated_at);
CREATE INDEX place_retired_at_index ON place (retired_at);
CREATE INDEX place_locale_code_index ON place (locale_code);
CREATE INDEX place_name_index ON place (name);
CREATE INDEX place_name_index_tpo ON place (name text_pattern_ops);
CREATE INDEX place_tagging_index ON place (tagging);
CREATE INDEX place_tagging_index_tpo ON place (tagging text_pattern_ops);
CREATE INDEX place_location_iso_3166_1_alpha_2_index on place (location_iso_3166_1_alpha_2 );
CREATE INDEX place_location_iso_3166_2_index on place (location_iso_3166_2);
CREATE INDEX place_location_postal_code_index on place (location_postal_code);
CREATE INDEX place_location_latitude_as_decimal_degrees_index on place (location_latitude_as_decimal_degrees);
CREATE INDEX place_location_longitude_as_decimal_degrees_index on place (location_longitude_as_decimal_degrees);
CREATE INDEX place_location_altitude_agl_as_meters_index on place (location_altitude_agl_as_meters);
CREATE INDEX place_location_altitude_msl_as_meters_index on place (location_altitude_msl_as_meters);
CREATE INDEX place_location_elevation_agl_as_meters_index on place (location_elevation_agl_as_meters);
CREATE INDEX place_location_elevation_msl_as_meters_index on place (location_elevation_msl_as_meters);
