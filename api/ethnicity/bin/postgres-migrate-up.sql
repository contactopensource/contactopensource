CREATE TABLE ethnicity (
);

CREATE INDEX ethnicity_id_index on ethnicity(id);
CREATE INDEX ethnicity_created_at_index on ethnicity(created_at);
CREATE INDEX ethnicity_created_by_index on ethnicity(created_by);
CREATE INDEX ethnicity_updated_at_index on ethnicity(updated_at);
CREATE INDEX ethnicity_updated_by_index on ethnicity(updated_by);
CREATE INDEX ethnicity_retired_at_index on ethnicity(retired_at);
CREATE INDEX ethnicity_retired_by_index on ethnicity(retired_by);
CREATE INDEX ethnicity_locale_code_index on ethnicity(locale_code);
CREATE INDEX ethnicity_tagging_index on ethnicity(tagging);
CREATE INDEX ethnicity_name_index on ethnicity(name);
CREATE INDEX ethnicity_subname_index on ethnicity(subname);
CREATE INDEX ethnicity_slug_index on ethnicity(slug);
CREATE INDEX ethnicity_sign_index on ethnicity(sign);
CREATE INDEX ethnicity_kind_index on ethnicity(kind);

