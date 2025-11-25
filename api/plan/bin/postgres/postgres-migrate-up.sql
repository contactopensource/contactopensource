CREATE TABLE plan (
);

CREATE INDEX plan_id_index on plan(id);
CREATE INDEX plan_created_at_index on plan(created_at);
CREATE INDEX plan_created_by_index on plan(created_by);
CREATE INDEX plan_updated_at_index on plan(updated_at);
CREATE INDEX plan_updated_by_index on plan(updated_by);
CREATE INDEX plan_retired_at_index on plan(retired_at);
CREATE INDEX plan_retired_by_index on plan(retired_by);
CREATE INDEX plan_locale_code_index on plan(locale_code);
CREATE INDEX plan_tagging_index on plan(tagging);
CREATE INDEX plan_name_index on plan(name);
CREATE INDEX plan_subname_index on plan(subname);
CREATE INDEX plan_slug_index on plan(slug);
CREATE INDEX plan_sign_index on plan(sign);
CREATE INDEX plan_kind_index on plan(kind);

