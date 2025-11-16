CREATE TABLE plan_milestone (
);

CREATE INDEX plan_milestone_id_index on plan_milestone(id);
CREATE INDEX plan_milestone_created_at_index on plan_milestone(created_at);
CREATE INDEX plan_milestone_created_by_index on plan_milestone(created_by);
CREATE INDEX plan_milestone_updated_at_index on plan_milestone(updated_at);
CREATE INDEX plan_milestone_updated_by_index on plan_milestone(updated_by);
CREATE INDEX plan_milestone_retired_at_index on plan_milestone(retired_at);
CREATE INDEX plan_milestone_retired_by_index on plan_milestone(retired_by);
CREATE INDEX plan_milestone_locale_code_index on plan_milestone(locale_code);
CREATE INDEX plan_milestone_tagging_index on plan_milestone(tagging);
CREATE INDEX plan_milestone_name_index on plan_milestone(name);
CREATE INDEX plan_milestone_subname_index on plan_milestone(subname);
CREATE INDEX plan_milestone_slug_index on plan_milestone(slug);
CREATE INDEX plan_milestone_sign_index on plan_milestone(sign);
CREATE INDEX plan_milestone_kind_index on plan_milestone(kind);

