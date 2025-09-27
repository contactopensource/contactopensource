CREATE TABLE plan (
);

CREATE INDEX index_plan_id on plan(id);
CREATE INDEX index_plan_sign on plan(sign);
CREATE INDEX index_plan_created_at on plan(created_at);
CREATE INDEX index_plan_created_by on plan(created_by);
CREATE INDEX index_plan_updated_at on plan(updated_at);
CREATE INDEX index_plan_updated_by on plan(updated_by);
CREATE INDEX index_plan_deleted_at on plan(deleted_at);
CREATE INDEX index_plan_deleted_by on plan(deleted_by);
CREATE INDEX index_plan_locale_code on plan(locale_code);
CREATE INDEX index_plan_sign on plan(sign);
CREATE INDEX index_plan_kind on plan(kind);
CREATE INDEX index_plan_title on plan(title);
CREATE INDEX index_plan_subtitle on plan(subtitle);

