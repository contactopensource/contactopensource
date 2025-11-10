CREATE TABLE uk_gdad_pcf_skill (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  locale_code text not null,
  name text not null,
  url text not null CONSTRAINT uk_gdad_pcf_role_url_check CHECK (url ~* '^https://'),
  description text not null,
  level_1_description_as_markdown text not null,
  level_2_description_as_markdown text not null,
  level_3_description_as_markdown text not null,
  level_4_description_as_markdown text not null,
  role_that_require_this_skill_as_markdown text not null
)

CREATE INDEX uk_gdad_pcf_skill_index_gto
  ON uk_gdad_pcf_skill
  USING GIN ((
    name
      || ' ' ||
    description
      || ' ' ||
    level_1_description_as_markdown
      || ' ' ||
    level_2_description_as_markdown
      || ' ' ||
    level_3_description_as_markdown
      || ' ' ||
    level_4_description_as_markdown
      || ' ' ||
    role_that_require_this_skill_as_markdown
  ) gin_trgm_ops);

CREATE INDEX uk_gdad_pcf_skill_locale_code_index ON uk_gdad_pcf_skill (locale_code);
CREATE INDEX uk_gdad_pcf_skill_name_index ON uk_gdad_pcf_skill (name);
CREATE INDEX uk_gdad_pcf_skill_name_index_tpo ON uk_gdad_pcf_skill (name text_pattern_ops);
