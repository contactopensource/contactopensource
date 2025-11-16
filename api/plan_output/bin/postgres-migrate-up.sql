CREATE TABLE plan_output (
);

CREATE INDEX plan_output_id_index on plan_output(id);
CREATE INDEX plan_output_created_at_index on plan_output(created_at);
CREATE INDEX plan_output_created_by_index on plan_output(created_by);
CREATE INDEX plan_output_updated_at_index on plan_output(updated_at);
CREATE INDEX plan_output_updated_by_index on plan_output(updated_by);
CREATE INDEX plan_output_retired_at_index on plan_output(retired_at);
CREATE INDEX plan_output_retired_by_index on plan_output(retired_by);
CREATE INDEX plan_output_locale_code_index on plan_output(locale_code);
CREATE INDEX plan_output_tagging_index on plan_output(tagging);
CREATE INDEX plan_output_name_index on plan_output(name);
CREATE INDEX plan_output_subname_index on plan_output(subname);
CREATE INDEX plan_output_slug_index on plan_output(slug);
CREATE INDEX plan_output_sign_index on plan_output(sign);
CREATE INDEX plan_output_kind_index on plan_output(kind);

