CREATE TABLE plan_impact (
);

CREATE INDEX plan_impact_id_index on plan_impact(id);
CREATE INDEX plan_impact_created_at_index on plan_impact(created_at);
CREATE INDEX plan_impact_created_by_index on plan_impact(created_by);
CREATE INDEX plan_impact_updated_at_index on plan_impact(updated_at);
CREATE INDEX plan_impact_updated_by_index on plan_impact(updated_by);
CREATE INDEX plan_impact_retired_at_index on plan_impact(retired_at);
CREATE INDEX plan_impact_retired_by_index on plan_impact(retired_by);
CREATE INDEX plan_impact_locale_code_index on plan_impact(locale_code);
CREATE INDEX plan_impact_tagging_index on plan_impact(tagging);
CREATE INDEX plan_impact_name_index on plan_impact(name);
CREATE INDEX plan_impact_subname_index on plan_impact(subname);
CREATE INDEX plan_impact_sign_index on plan_impact(sign);
CREATE INDEX plan_impact_kind_index on plan_impact(kind);

