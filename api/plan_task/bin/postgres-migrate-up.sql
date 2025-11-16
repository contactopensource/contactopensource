CREATE TABLE plan_task (
);

CREATE INDEX plan_task_id_index on plan_task(id);
CREATE INDEX plan_task_created_at_index on plan_task(created_at);
CREATE INDEX plan_task_created_by_index on plan_task(created_by);
CREATE INDEX plan_task_updated_at_index on plan_task(updated_at);
CREATE INDEX plan_task_updated_by_index on plan_task(updated_by);
CREATE INDEX plan_task_retired_at_index on plan_task(retired_at);
CREATE INDEX plan_task_retired_by_index on plan_task(retired_by);
CREATE INDEX plan_task_locale_code_index on plan_task(locale_code);
CREATE INDEX plan_task_tagging_index on plan_task(tagging);
CREATE INDEX plan_task_name_index on plan_task(name);
CREATE INDEX plan_task_subname_index on plan_task(subname);
CREATE INDEX plan_task_slug_index on plan_task(slug);
CREATE INDEX plan_task_sign_index on plan_task(sign);
CREATE INDEX plan_task_kind_index on plan_task(kind);

