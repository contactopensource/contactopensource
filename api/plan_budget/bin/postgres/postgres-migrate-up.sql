CREATE TABLE plan_budget (
);

CREATE INDEX plan_budget_id_index on plan_budget(id);
CREATE INDEX plan_budget_created_at_index on plan_budget(created_at);
CREATE INDEX plan_budget_created_by_index on plan_budget(created_by);
CREATE INDEX plan_budget_updated_at_index on plan_budget(updated_at);
CREATE INDEX plan_budget_updated_by_index on plan_budget(updated_by);
CREATE INDEX plan_budget_retired_at_index on plan_budget(retired_at);
CREATE INDEX plan_budget_retired_by_index on plan_budget(retired_by);
CREATE INDEX plan_budget_locale_code_index on plan_budget(locale_code);
CREATE INDEX plan_budget_tagging_index on plan_budget(tagging);
CREATE INDEX plan_budget_name_index on plan_budget(name);
CREATE INDEX plan_budget_subname_index on plan_budget(subname);
CREATE INDEX plan_budget_slug_index on plan_budget(slug);
CREATE INDEX plan_budget_sign_index on plan_budget(sign);
CREATE INDEX plan_budget_kind_index on plan_budget(kind);

