CREATE TABLE uk_gdad_pcf_role_family (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  locale_code text not null,
  name text not null
)

CREATE INDEX uk_gdad_pcf_role_family_index_gto
  ON uk_gdad_pcf_role_family
  USING GIN ((
    locale_code
      || ' ' ||
    name
  ) gin_trgm_ops);

CREATE INDEX uk_gdad_pcf_role_family_locale_code_index ON uk_gdad_pcf_role_family (locale_code);
CREATE INDEX uk_gdad_pcf_role_family_name_index ON uk_gdad_pcf_role_family (name);
CREATE INDEX uk_gdad_pcf_role_family_name_index_tpo ON uk_gdad_pcf_role_family (name text_pattern_ops);
