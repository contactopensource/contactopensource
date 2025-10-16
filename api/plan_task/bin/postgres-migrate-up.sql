CREATE TABLE plan_task (
);

CREATE INDEX index_plan_task_id on plan_task(id);
CREATE INDEX index_plan_task_created_at on plan_task(created_at);
CREATE INDEX index_plan_task_created_by on plan_task(created_by);
CREATE INDEX index_plan_task_updated_at on plan_task(updated_at);
CREATE INDEX index_plan_task_updated_by on plan_task(updated_by);
CREATE INDEX index_plan_task_deleted_at on plan_task(deleted_at);
CREATE INDEX index_plan_task_deleted_by on plan_task(deleted_by);
CREATE INDEX index_plan_task_locale_code on plan_task(locale_code);
CREATE INDEX index_plan_task_tagging on plan_task(tagging);
CREATE INDEX index_plan_task_name on plan_task(name);
CREATE INDEX index_plan_task_subname on plan_task(subname);
CREATE INDEX index_plan_task_sign on plan_task(sign);
CREATE INDEX index_plan_task_kind on plan_task(kind);

