CREATE TABLE uk_gdad_pcf_role_families (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  locale_code text not null,
  name text not null,
)
CREATE INDEX uk_gdad_pcf_role_families_locale_code_index ON uk_gdad_pcf_role_families (locale_code);
CREATE INDEX uk_gdad_pcf_role_families_name_index ON uk_gdad_pcf_role_families (name);
CREATE INDEX uk_gdad_pcf_role_families_name_index_tpo ON uk_gdad_pcf_role_families (name text_pattern_ops);
