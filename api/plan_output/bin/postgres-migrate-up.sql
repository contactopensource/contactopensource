CREATE TABLE plan_output (
);

CREATE INDEX index_plan_output_id on plan_output(id);
CREATE INDEX index_plan_output_sign on plan_output(sign);
CREATE INDEX index_plan_output_created_at on plan_output(created_at);
CREATE INDEX index_plan_output_created_by on plan_output(created_by);
CREATE INDEX index_plan_output_updated_at on plan_output(updated_at);
CREATE INDEX index_plan_output_updated_by on plan_output(updated_by);
CREATE INDEX index_plan_output_deleted_at on plan_output(deleted_at);
CREATE INDEX index_plan_output_deleted_by on plan_output(deleted_by);
CREATE INDEX index_plan_output_locale_id on plan_output(locale_id);
CREATE INDEX index_plan_output_title on plan_output(title);
CREATE INDEX index_plan_output_subtitle on plan_output(subtitle);

