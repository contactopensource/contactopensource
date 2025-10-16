CREATE TABLE plan_impact (
);

CREATE INDEX index_plan_impact_id on plan_impact(id);
CREATE INDEX index_plan_impact_created_at on plan_impact(created_at);
CREATE INDEX index_plan_impact_created_by on plan_impact(created_by);
CREATE INDEX index_plan_impact_updated_at on plan_impact(updated_at);
CREATE INDEX index_plan_impact_updated_by on plan_impact(updated_by);
CREATE INDEX index_plan_impact_deleted_at on plan_impact(deleted_at);
CREATE INDEX index_plan_impact_deleted_by on plan_impact(deleted_by);
CREATE INDEX index_plan_impact_locale_code on plan_impact(locale_code);
CREATE INDEX index_plan_impact_tagging on plan_impact(tagging);
CREATE INDEX index_plan_impact_name on plan_impact(name);
CREATE INDEX index_plan_impact_subname on plan_impact(subname);
CREATE INDEX index_plan_impact_sign on plan_impact(sign);
CREATE INDEX index_plan_impact_kind on plan_impact(kind);

