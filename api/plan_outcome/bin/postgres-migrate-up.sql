CREATE TABLE plan_outcome (
);

CREATE INDEX index_plan_outcome_id on plan_outcome(id);
CREATE INDEX index_plan_outcome_created_at on plan_outcome(created_at);
CREATE INDEX index_plan_outcome_created_by on plan_outcome(created_by);
CREATE INDEX index_plan_outcome_updated_at on plan_outcome(updated_at);
CREATE INDEX index_plan_outcome_updated_by on plan_outcome(updated_by);
CREATE INDEX index_plan_outcome_deleted_at on plan_outcome(deleted_at);
CREATE INDEX index_plan_outcome_deleted_by on plan_outcome(deleted_by);
CREATE INDEX index_plan_outcome_locale_code on plan_outcome(locale_code);
CREATE INDEX index_plan_outcome_tagging on plan_outcome(tagging);
CREATE INDEX index_plan_outcome_name on plan_outcome(name);
CREATE INDEX index_plan_outcome_subname on plan_outcome(subname);
CREATE INDEX index_plan_outcome_sign on plan_outcome(sign);
CREATE INDEX index_plan_outcome_kind on plan_outcome(kind);

