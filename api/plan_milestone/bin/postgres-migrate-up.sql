CREATE TABLE plan_milestone (
);

CREATE INDEX index_plan_milestone_id on plan_milestone(id);
CREATE INDEX index_plan_milestone_sign on plan_milestone(sign);
CREATE INDEX index_plan_milestone_created_at on plan_milestone(created_at);
CREATE INDEX index_plan_milestone_created_by on plan_milestone(created_by);
CREATE INDEX index_plan_milestone_updated_at on plan_milestone(updated_at);
CREATE INDEX index_plan_milestone_updated_by on plan_milestone(updated_by);
CREATE INDEX index_plan_milestone_deleted_at on plan_milestone(deleted_at);
CREATE INDEX index_plan_milestone_deleted_by on plan_milestone(deleted_by);
CREATE INDEX index_plan_milestone_locale_id on plan_milestone(locale_id);
CREATE INDEX index_plan_milestone_title on plan_milestone(title);
CREATE INDEX index_plan_milestone_subtitle on plan_milestone(subtitle);

