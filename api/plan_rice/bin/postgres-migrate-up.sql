CREATE TABLE plan_rice (
);

CREATE INDEX index_plan_rice_id on plan_rice(id);
CREATE INDEX index_plan_rice_created_at on plan_rice(created_at);
CREATE INDEX index_plan_rice_created_by on plan_rice(created_by);
CREATE INDEX index_plan_rice_updated_at on plan_rice(updated_at);
CREATE INDEX index_plan_rice_updated_by on plan_rice(updated_by);
CREATE INDEX index_plan_rice_retired_at on plan_rice(retired_at);
CREATE INDEX index_plan_rice_retired_by on plan_rice(retired_by);
CREATE INDEX index_plan_rice_locale_code on plan_rice(locale_code);
CREATE INDEX index_plan_rice_tagging on plan_rice(tagging);
CREATE INDEX index_plan_rice_name on plan_rice(name);
CREATE INDEX index_plan_rice_subname on plan_rice(subname);
CREATE INDEX index_plan_rice_sign on plan_rice(sign);
CREATE INDEX index_plan_rice_kind on plan_rice(kind);

