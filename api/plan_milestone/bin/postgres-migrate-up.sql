CREATE TABLE plan_milestone (
);

CREATE INDEX index_plan_milestone_id on plan_milestone(id);
CREATE INDEX index_plan_milestone_created_at on plan_milestone(created_at);
CREATE INDEX index_plan_milestone_created_by on plan_milestone(created_by);
CREATE INDEX index_plan_milestone_updated_at on plan_milestone(updated_at);
CREATE INDEX index_plan_milestone_updated_by on plan_milestone(updated_by);
CREATE INDEX index_plan_milestone_retired_at on plan_milestone(retired_at);
CREATE INDEX index_plan_milestone_retired_by on plan_milestone(retired_by);
CREATE INDEX index_plan_milestone_locale_code on plan_milestone(locale_code);
CREATE INDEX index_plan_milestone_tagging on plan_milestone(tagging);
CREATE INDEX index_plan_milestone_name on plan_milestone(name);
CREATE INDEX index_plan_milestone_subname on plan_milestone(subname);
CREATE INDEX index_plan_milestone_sign on plan_milestone(sign);
CREATE INDEX index_plan_milestone_kind on plan_milestone(kind);

