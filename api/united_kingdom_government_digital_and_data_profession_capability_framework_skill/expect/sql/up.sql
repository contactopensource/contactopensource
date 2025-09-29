CREATE TABLE uk_gdad_pcf_skills (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  locale_code text not null,
  name text not null,
  url text not null,
  description text_pattern_ops not null,
  level_1_description_as_markdown text not null,
  level_1_description_as_html text not null,
  level_2_description_as_markdown text not null,
  level_2_description_as_html text not null,
  level_3_description_as_markdown text not null,
  level_3_description_as_html text not null,
  level_4_description_as_markdown text not null,
  level_4_description_as_html text not null,
  roles_that_require_this_skill_as_markdown text not null,
  roles_that_require_this_skill_as_html text not null
)
CREATE INDEX uk_gdad_pcf_skills_locale_code_index ON uk_gdad_pcf_skills (locale_code);
CREATE INDEX uk_gdad_pcf_skills_name_index ON uk_gdad_pcf_skills (name);
CREATE INDEX uk_gdad_pcf_skills_name_index_tpo ON uk_gdad_pcf_skills (name text_pattern_ops);
