CREATE TABLE skill (
);

CREATE INDEX skill_id_index on skill(id);
CREATE INDEX skill_created_at_index on skill(created_at);
CREATE INDEX skill_created_by_index on skill(created_by);
CREATE INDEX skill_updated_at_index on skill(updated_at);
CREATE INDEX skill_updated_by_index on skill(updated_by);
CREATE INDEX skill_retired_at_index on skill(retired_at);
CREATE INDEX skill_retired_by_index on skill(retired_by);
CREATE INDEX skill_locale_code_index on skill(locale_code);
CREATE INDEX skill_tagging_index on skill(tagging);
CREATE INDEX skill_name_index on skill(name);
CREATE INDEX skill_subname_index on skill(subname);
CREATE INDEX skill_sign_index on skill(sign);
CREATE INDEX skill_kind_index on skill(kind);

