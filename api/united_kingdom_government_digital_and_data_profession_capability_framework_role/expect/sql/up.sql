CREATE TABLE uk_gdad_pcf_roles (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    locale_code text not null,
    family text not null,
    name text not null,
    url text not null,
    description_as_markdown text not null,
    description_as_html text not null,
    level_name text not null,
    level_description_as_markdown text not null,
    level_description_as_html text not null,
    senior_civil_service_flag boolean not null
)
CREATE INDEX uk_gdad_pcf_roles_locale_code_index ON uk_gdad_pcf_roles (locale_code);
CREATE INDEX uk_gdad_pcf_roles_family_index ON uk_gdad_pcf_roles (family);
CREATE INDEX uk_gdad_pcf_roles_family_index_tpo ON uk_gdad_pcf_roles (family text_pattern_ops);
CREATE INDEX uk_gdad_pcf_roles_name_index ON uk_gdad_pcf_roles (name);
CREATE INDEX uk_gdad_pcf_roles_name_index_tpo ON uk_gdad_pcf_roles (name text_pattern_ops);
