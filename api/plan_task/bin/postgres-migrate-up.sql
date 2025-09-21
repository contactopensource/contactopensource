CREATE TABLE plan_task (
);

CREATE INDEX index_plan_task_id on plan_task(id);
CREATE INDEX index_plan_task_sign on plan_task(sign);
CREATE INDEX index_plan_task_created_at on plan_task(created_at);
CREATE INDEX index_plan_task_created_by on plan_task(created_by);
CREATE INDEX index_plan_task_updated_at on plan_task(updated_at);
CREATE INDEX index_plan_task_updated_by on plan_task(updated_by);
CREATE INDEX index_plan_task_deleted_at on plan_task(deleted_at);
CREATE INDEX index_plan_task_deleted_by on plan_task(deleted_by);
CREATE INDEX index_plan_task_locale_id on plan_task(locale_id);
CREATE INDEX index_plan_task_title on plan_task(title);
CREATE INDEX index_plan_task_subtitle on plan_task(subtitle);

