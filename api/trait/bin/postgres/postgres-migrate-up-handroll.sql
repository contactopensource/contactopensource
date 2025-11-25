CREATE TABLE trait (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  updated_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  retired_at TIMESTAMP(6) WITH TIME ZONE,
  locale_code text,
  parent_id uuid CONSTRAINT trait_parent_id_fk REFERENCES trait (id),
  parent_order int CONSTRAINT trait_parent_order_check CHECK (parent_order >= 0),
  --- card
  name text,
  sign text CONSTRAINT trait_sign_check CHECK (LENGTH(sign) = 1),
  status text,
  tagging text,
  note text,
  -- ai
  ai_agent_instructions_as_url text CONSTRAINT trait_ai_agent_instructions_as_url CHECK (ai_agent_instructions_as_url ~* '^https://'),
  ai_agent_instructions_as_markdown text,
  --- content
  summary_as_markdown text,
  description_as_markdown text,
  -- images
  avatar_image_400x400_url text CONSTRAINT trait_avatar_image_400x400_url_check CHECK (avatar_image_400x400_url ~* '^https://'),
  avatar_image_400x400_alt text,
  main_image_1080x1080_url text CONSTRAINT trait_main_image_1080x1080_url_check CHECK (main_image_1080x1080_url ~* '^https://'),
  main_image_1080x1080_alt text,
  main_image_1920x1080_url text CONSTRAINT trait_main_image_1920x1080_url_check CHECK (main_image_1920x1080_url ~* '^https://'),
  main_image_1920x1080_alt text,
  main_image_1080x1920_url text CONSTRAINT trait_main_image_1080x1920_url_check CHECK (main_image_1080x1920_url ~* '^https://'),
  main_image_1080x1920_alt text
);

CREATE TRIGGER trigger_trait_updated_at
  BEFORE UPDATE ON trait
  FOR EACH ROW EXECUTE FUNCTION
  trigger_updated_at();

CREATE INDEX trait_index_gto
  ON trait USING GIN ((
    sign
      || ' ' || name
      || ' ' || status
      || ' ' || tagging
      || ' ' || note
      || ' ' || ai_agent_instructions_as_markdown
      || ' ' || summary_as_markdown
      || ' ' || description_as_markdown
  ) gin_trgm_ops);

CREATE INDEX trait_created_at_index ON trait (created_at);
CREATE INDEX trait_updated_at_index ON trait (updated_at);
CREATE INDEX trait_retired_at_index ON trait (retired_at);
CREATE INDEX trait_locale_code_index ON trait (locale_code);
CREATE INDEX trait_name_index ON trait (name);
CREATE INDEX trait_name_index_tpo ON trait (name text_pattern_ops);
CREATE INDEX trait_tagging_index ON trait (tagging);
CREATE INDEX trait_tagging_index_tpo ON trait (tagging text_pattern_ops);
