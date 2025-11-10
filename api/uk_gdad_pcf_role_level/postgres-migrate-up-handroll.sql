CREATE TABLE uk_gdad_pcf_role_level (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  locale_code text not null,
  uk_gdad_pcf_role_id uuid not null REFERENCES uk_gdad_pcf_role(id) ON DELETE SET NULL,
  uk_gdad_pcf_role_order integer not null,
  name text not null,
  description_as_markdown text not null
)

CREATE INDEX uk_gdad_pcf_role_level_index_gto
  ON uk_gdad_pcf_role_level
  USING GIN ((
    locale_code
      || ' ' ||
    name
      || ' ' ||
    description_as_markdown
  ) gin_trgm_ops);

CREATE INDEX uk_gdad_pcf_role_level_locale_code_index ON uk_gdad_pcf_role_level (locale_code);
CREATE INDEX uk_gdad_pcf_role_id_index ON uk_gdad_pcf_role (id);
CREATE INDEX uk_gdad_pcf_role_level_name_index ON uk_gdad_pcf_role_level (name);
CREATE INDEX uk_gdad_pcf_role_level_name_index_tpo ON uk_gdad_pcf_role_level (name text_pattern_ops);
