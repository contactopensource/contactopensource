CREATE TABLE plan_outcome (
);

CREATE INDEX plan_outcome_id_index on plan_outcome(id);
CREATE INDEX plan_outcome_created_at_index on plan_outcome(created_at);
CREATE INDEX plan_outcome_created_by_index on plan_outcome(created_by);
CREATE INDEX plan_outcome_updated_at_index on plan_outcome(updated_at);
CREATE INDEX plan_outcome_updated_by_index on plan_outcome(updated_by);
CREATE INDEX plan_outcome_retired_at_index on plan_outcome(retired_at);
CREATE INDEX plan_outcome_retired_by_index on plan_outcome(retired_by);
CREATE INDEX plan_outcome_locale_code_index on plan_outcome(locale_code);
CREATE INDEX plan_outcome_tagging_index on plan_outcome(tagging);
CREATE INDEX plan_outcome_name_index on plan_outcome(name);
CREATE INDEX plan_outcome_subname_index on plan_outcome(subname);
CREATE INDEX plan_outcome_slug_index on plan_outcome(slug);
CREATE INDEX plan_outcome_sign_index on plan_outcome(sign);
CREATE INDEX plan_outcome_kind_index on plan_outcome(kind);

