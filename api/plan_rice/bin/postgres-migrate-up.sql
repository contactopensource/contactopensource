CREATE TABLE plan_rice (
);

CREATE INDEX plan_rice_id_index on plan_rice(id);
CREATE INDEX plan_rice_created_at_index on plan_rice(created_at);
CREATE INDEX plan_rice_created_by_index on plan_rice(created_by);
CREATE INDEX plan_rice_updated_at_index on plan_rice(updated_at);
CREATE INDEX plan_rice_updated_by_index on plan_rice(updated_by);
CREATE INDEX plan_rice_retired_at_index on plan_rice(retired_at);
CREATE INDEX plan_rice_retired_by_index on plan_rice(retired_by);
CREATE INDEX plan_rice_locale_code_index on plan_rice(locale_code);
CREATE INDEX plan_rice_tagging_index on plan_rice(tagging);
CREATE INDEX plan_rice_name_index on plan_rice(name);
CREATE INDEX plan_rice_subname_index on plan_rice(subname);
CREATE INDEX plan_rice_slug_index on plan_rice(slug);
CREATE INDEX plan_rice_sign_index on plan_rice(sign);
CREATE INDEX plan_rice_kind_index on plan_rice(kind);

