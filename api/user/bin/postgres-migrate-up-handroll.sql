CREATE TABLE user (
  --- meta
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  updated_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  retired_at TIMESTAMP(6) WITH TIME ZONE,
  locale_code text,
  parent_id uuid CONSTRAINT user_parent_id_fk REFERENCES user (id),
  parent_order int CONSTRAINT user_user_parent_order_check CHECK (parent_order >= 0),
  --- card
  name text,
  sign text CONSTRAINT user_sign_check CHECK (LENGTH(sign) = 1),
  status text,
  tagging text,
  note text,
  -- ai
  ai_agent_instructions_as_url text CONSTRAINT user_ai_agent_instructions_as_url CHECK (ai_agent_instructions_as_url ~* '^https://'),
  ai_agent_instructions_as_markdown text,
  --- contact
  web text CONSTRAINT user_web_check CHECK (web ~* '^https://'),
  email text CONSTRAINT user_email_check CHECK (email ~*  '.@.'),
  phone text,
  chat text,
  calendar text,
  postal text,
  rdf_type text,
  --- social
  bluesky_as_url text CONSTRAINT user_bluesky_as_url_check CHECK (bluesky_as_url ~* '^https://bsky\.app/'),
  codeberg_as_url text CONSTRAINT user_codeberg_as_url_check CHECK (codeberg_as_url ~* '^https://codeberg\.org/'),
  facebook_as_url text CONSTRAINT user_facebook_as_url_check CHECK (facebook_as_url ~* '^https://facebook\.com/'),
  github_as_url text CONSTRAINT user_github_as_url_check CHECK (github_as_url ~* '^https://github\.com/'),
  instagram_as_url text CONSTRAINT user_instagram_as_url_check CHECK (instagram_as_url ~* '^https://instagram\.com/'),
  linkedin_as_url text CONSTRAINT user_linkedin_as_url_check CHECK (linkedin_as_url ~* '^https://linkedin\.com/'),
  mastodon_as_url text CONSTRAINT user_mastodon_as_url_check CHECK (mastodon_as_url ~* '^https://'),
  orcid_as_url text CONSTRAINT user_orcid_as_url_check CHECK (orcid_as_url ~* '^https://orcid\.org/'),
  tiktok_as_url text CONSTRAINT user_tiktok_as_url_check CHECK (tiktok_as_url ~* '^https://tiktok\.com/'),
  wikipedia_as_url text CONSTRAINT user_wikipedia_uri_check CHECK (wikipedia_as_url ~* '^https://wikipedia\.org/'),
  youtube_as_url text CONSTRAINT user_youtube_as_url_check CHECK (youtube_as_url ~* '^https://youtube\.com/'),
  --- location
  location_iso_3166_1_alpha_2 char(2) CONSTRAINT user_location_iso_3166_1_alpha_2_check CHECK (location_iso_3166_1_alpha_2 ~* '^[a-z][a-z]$'),
  location_iso_3166_2 text,
  location_postal_code text,
  location_latitude_as_decimal_degrees numeric(9, 7) CONSTRAINT user_location_latitude_as_decimal_degrees_check CHECK (location_latitude_as_decimal_degrees BETWEEN -90.0 AND 90.0),
  location_longitude_as_decimal_degrees numeric(10, 7) CONSTRAINT user_location_longitude_as_decimal_degrees_check CHECK (location_longitude_as_decimal_degrees BETWEEN -180.0 AND 180.0),
  --- images
  avatar_image_400x400_url text CONSTRAINT user_avatar_image_400x400_url_check CHECK (avatar_image_400x400_url ~* '^https://'),
  avatar_image_400x400_alt text,
  main_image_1080x1080_url text CONSTRAINT user_main_image_1080x1080_url_check CHECK (main_image_1080x1080_url ~* '^https://'),
  main_image_1080x1080_alt text,
  main_image_1920x1080_url text CONSTRAINT user_main_image_1920x1080_url_check CHECK (main_image_1920x1080_url ~* '^https://'),
  main_image_1920x1080_alt text,
  main_image_1080x1920_url text CONSTRAINT user_main_image_1080x1920_url_check CHECK (main_image_1080x1920_url ~* '^https://'),
  main_image_1080x1920_alt text,
  --- statements
  purpose_statement text,
  vision_statement text,
  mission_statement text,
  values_statement text,
  --- workable
  email_distribution_list text,
  daisyui_timeline_html text,
  org_mode text,
  task_list_as_markdown text,
  ways_of_working_as_markdown text,
  objectives_and_key_results_as_markdown text,
  key_performance_indicators_as_markdown text,
  --- work profile
  work_profile_resume_as_pdf_url text CONSTRAINT user_work_profile_resume_as_pdf_url_check CHECK (work_profile_resume_as_pdf_url ~* '^https://'),
  work_profile_resume_as_markdown text,
  work_profile_curriculum_vitae_as_pdf_url text CONSTRAINT user_work_profile_curriculum_vitae_as_pdf_url_check CHECK (work_profile_curriculum_vitae_as_pdf_url ~* '^https://'),
  work_profile_curriculum_vitae_as_markdown text,
  --- work role
  work_role_name text,
  work_role_start_date date,
  work_role_stop_date date,
  work_role_level text,
  work_role_description_as_markdown text,
  work_role_professional_development_plan_as_markdown text,
  work_role_onet_soc_2019_code text,
  work_role_uk_civil_service_grade_abbreviation text,
  work_role_uk_soc_2020_code text,
  work_role_uk_gdad_pcf_url text
);

CREATE TRIGGER trigger_user_updated_at
  BEFORE UPDATE ON user
  FOR EACH ROW EXECUTE FUNCTION
  trigger_updated_at();

CREATE INDEX user_index_gto
  ON user
  USING GIN ((
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
      || ' ' || purpose_statement
      || ' ' || vision_statement
      || ' ' || mission_statement
      || ' ' || values_statement
      || ' ' || org_mode
      || ' ' || task_list_as_markdown
      || ' ' || ways_of_working_as_markdown
      || ' ' || objectives_and_key_results_as_markdown
      || ' ' || key_performance_indicators_as_markdown
      || ' ' || work_profile_resume_as_markdown
      || ' ' || work_profile_curriculum_vitae_as_markdown
      || ' ' || work_role_name
      || ' ' || work_role_level
      || ' ' || work_role_description_as_markdown
      || ' ' || work_role_professional_development_plan_as_markdown
      || ' ' || work_role_onet_soc_2019_code
      || ' ' || work_role_uk_civil_service_grade_abbreviation
      || ' ' || work_role_uk_soc_2020_code
      || ' ' || work_role_uk_gdad_pcf_url
  ) gin_trgm_ops);

CREATE INDEX user_created_at_index ON user (created_at);
CREATE INDEX user_updated_at_index ON user (updated_at);
CREATE INDEX user_retired_at_index ON user (retired_at);
CREATE INDEX user_locale_code_index ON user (locale_code);
CREATE INDEX user_name_index ON user (name);
CREATE INDEX user_name_index_tpo ON user (name text_pattern_ops);
CREATE INDEX user_tagging_index ON user (tagging);
CREATE INDEX user_tagging_index_tpo ON user (tagging text_pattern_ops);
CREATE UNIQUE INDEX index_user_email ON user (email);
CREATE INDEX user_work_role_onet_soc_2019_code_index ON user (work_role_onet_soc_2019_code);
CREATE INDEX user_work_role_uk_civil_service_grade_abbreviation_index ON user (work_role_uk_civil_service_grade_abbreviation);
