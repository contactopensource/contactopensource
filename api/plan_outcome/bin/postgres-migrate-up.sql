CREATE TABLE plan_outcome (
);

CREATE INDEX index_plan_outcome_id on plan_outcome(id);
CREATE INDEX index_plan_outcome_sign on plan_outcome(sign);
CREATE INDEX index_plan_outcome_created_at on plan_outcome(created_at);
CREATE INDEX index_plan_outcome_created_by on plan_outcome(created_by);
CREATE INDEX index_plan_outcome_updated_at on plan_outcome(updated_at);
CREATE INDEX index_plan_outcome_updated_by on plan_outcome(updated_by);
CREATE INDEX index_plan_outcome_deleted_at on plan_outcome(deleted_at);
CREATE INDEX index_plan_outcome_deleted_by on plan_outcome(deleted_by);
CREATE INDEX index_plan_outcome_locale_id on plan_outcome(locale_id);
CREATE INDEX index_plan_outcome_title on plan_outcome(title);
CREATE INDEX index_plan_outcome_subtitle on plan_outcome(subtitle);

