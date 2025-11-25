CREATE TABLE disability (
);

CREATE INDEX disability_id_index on disability(id);
CREATE INDEX disability_created_at_index on disability(created_at);
CREATE INDEX disability_created_by_index on disability(created_by);
CREATE INDEX disability_updated_at_index on disability(updated_at);
CREATE INDEX disability_updated_by_index on disability(updated_by);
CREATE INDEX disability_retired_at_index on disability(retired_at);
CREATE INDEX disability_retired_by_index on disability(retired_by);
CREATE INDEX disability_locale_code_index on disability(locale_code);
CREATE INDEX disability_tagging_index on disability(tagging);
CREATE INDEX disability_name_index on disability(name);
CREATE INDEX disability_subname_index on disability(subname);
CREATE INDEX disability_slug_index on disability(slug);
CREATE INDEX disability_sign_index on disability(sign);
CREATE INDEX disability_kind_index on disability(kind);

