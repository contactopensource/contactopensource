CREATE TABLE uk_gdad_pcf_role (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  locale_code text not null,
  uk_gdad_pcf_role_family_id uuid not null REFERENCES uk_gdad_pcf_role_family(id) ON DELETE SET NULL,
  name text not null,
  url text not null CONSTRAINT uk_gdad_pcf_role_url_check CHECK (url ~* '^https://'),
  description_as_markdown text not null,
  senior_civil_service_flag boolean not null
)

CREATE INDEX uk_gdad_pcf_role_index_gto
  ON uk_gdad_pcf_role
  USING GIN ((
    locale_code
      || ' ' ||
    name
      || ' ' ||
    description_as_markdown
  ) gin_trgm_ops);

CREATE INDEX uk_gdad_pcf_role_locale_code_index ON uk_gdad_pcf_role (locale_code);
CREATE INDEX uk_gdad_pcf_role_uk_gdad_pcf_role_family_id_index ON uk_gdad_pcf_role (uk_gdad_pcf_role_family_id);
CREATE INDEX uk_gdad_pcf_role_name_index ON uk_gdad_pcf_role (name);
CREATE INDEX uk_gdad_pcf_role_name_index_tpo ON uk_gdad_pcf_role (name text_pattern_ops);
