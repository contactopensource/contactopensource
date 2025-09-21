CREATE TABLE plan_impact (
);

CREATE INDEX index_plan_impact_id on plan_impact(id);
CREATE INDEX index_plan_impact_sign on plan_impact(sign);
CREATE INDEX index_plan_impact_created_at on plan_impact(created_at);
CREATE INDEX index_plan_impact_created_by on plan_impact(created_by);
CREATE INDEX index_plan_impact_updated_at on plan_impact(updated_at);
CREATE INDEX index_plan_impact_updated_by on plan_impact(updated_by);
CREATE INDEX index_plan_impact_deleted_at on plan_impact(deleted_at);
CREATE INDEX index_plan_impact_deleted_by on plan_impact(deleted_by);
CREATE INDEX index_plan_impact_locale_id on plan_impact(locale_id);
CREATE INDEX index_plan_impact_title on plan_impact(title);
CREATE INDEX index_plan_impact_subtitle on plan_impact(subtitle);

