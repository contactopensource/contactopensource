CREATE TABLE plan_smart (
);

CREATE INDEX plan_smart_id_index on plan_smart(id);
CREATE INDEX plan_smart_created_at_index on plan_smart(created_at);
CREATE INDEX plan_smart_created_by_index on plan_smart(created_by);
CREATE INDEX plan_smart_updated_at_index on plan_smart(updated_at);
CREATE INDEX plan_smart_updated_by_index on plan_smart(updated_by);
CREATE INDEX plan_smart_retired_at_index on plan_smart(retired_at);
CREATE INDEX plan_smart_retired_by_index on plan_smart(retired_by);
CREATE INDEX plan_smart_locale_code_index on plan_smart(locale_code);
CREATE INDEX plan_smart_tagging_index on plan_smart(tagging);
CREATE INDEX plan_smart_name_index on plan_smart(name);
CREATE INDEX plan_smart_subname_index on plan_smart(subname);
CREATE INDEX plan_smart_sign_index on plan_smart(sign);
CREATE INDEX plan_smart_kind_index on plan_smart(kind);

