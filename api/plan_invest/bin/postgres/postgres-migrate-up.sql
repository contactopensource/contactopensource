CREATE TABLE plan_invest (
);

CREATE INDEX plan_invest_id_index on plan_invest(id);
CREATE INDEX plan_invest_created_at_index on plan_invest(created_at);
CREATE INDEX plan_invest_created_by_index on plan_invest(created_by);
CREATE INDEX plan_invest_updated_at_index on plan_invest(updated_at);
CREATE INDEX plan_invest_updated_by_index on plan_invest(updated_by);
CREATE INDEX plan_invest_retired_at_index on plan_invest(retired_at);
CREATE INDEX plan_invest_retired_by_index on plan_invest(retired_by);
CREATE INDEX plan_invest_locale_code_index on plan_invest(locale_code);
CREATE INDEX plan_invest_tagging_index on plan_invest(tagging);
CREATE INDEX plan_invest_name_index on plan_invest(name);
CREATE INDEX plan_invest_subname_index on plan_invest(subname);
CREATE INDEX plan_invest_slug_index on plan_invest(slug);
CREATE INDEX plan_invest_sign_index on plan_invest(sign);
CREATE INDEX plan_invest_kind_index on plan_invest(kind);

