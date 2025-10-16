CREATE TABLE plan_output (
);

CREATE INDEX index_plan_output_id on plan_output(id);
CREATE INDEX index_plan_output_created_at on plan_output(created_at);
CREATE INDEX index_plan_output_created_by on plan_output(created_by);
CREATE INDEX index_plan_output_updated_at on plan_output(updated_at);
CREATE INDEX index_plan_output_updated_by on plan_output(updated_by);
CREATE INDEX index_plan_output_deleted_at on plan_output(deleted_at);
CREATE INDEX index_plan_output_deleted_by on plan_output(deleted_by);
CREATE INDEX index_plan_output_locale_code on plan_output(locale_code);
CREATE INDEX index_plan_output_tagging on plan_output(tagging);
CREATE INDEX index_plan_output_name on plan_output(name);
CREATE INDEX index_plan_output_subname on plan_output(subname);
CREATE INDEX index_plan_output_sign on plan_output(sign);
CREATE INDEX index_plan_output_kind on plan_output(kind);

