CREATE TABLE plan_budget (
);

CREATE INDEX index_plan_budget_id on plan_budget(id);
CREATE INDEX index_plan_budget_created_at on plan_budget(created_at);
CREATE INDEX index_plan_budget_created_by on plan_budget(created_by);
CREATE INDEX index_plan_budget_updated_at on plan_budget(updated_at);
CREATE INDEX index_plan_budget_updated_by on plan_budget(updated_by);
CREATE INDEX index_plan_budget_deleted_at on plan_budget(deleted_at);
CREATE INDEX index_plan_budget_deleted_by on plan_budget(deleted_by);
CREATE INDEX index_plan_budget_locale_code on plan_budget(locale_code);
CREATE INDEX index_plan_budget_sign on plan_budget(sign);
CREATE INDEX index_plan_budget_kind on plan_budget(kind);
CREATE INDEX index_plan_budget_name on plan_budget(name);
CREATE INDEX index_plan_budget_subname on plan_budget(subname);

