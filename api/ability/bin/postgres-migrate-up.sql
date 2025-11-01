CREATE TABLE ability (
);

CREATE INDEX index_ability_id on ability(id);
CREATE INDEX index_ability_created_at on ability(created_at);
CREATE INDEX index_ability_created_by on ability(created_by);
CREATE INDEX index_ability_updated_at on ability(updated_at);
CREATE INDEX index_ability_updated_by on ability(updated_by);
CREATE INDEX index_ability_retired_at on ability(retired_at);
CREATE INDEX index_ability_retired_by on ability(retired_by);
CREATE INDEX index_ability_locale_code on ability(locale_code);
CREATE INDEX index_ability_tagging on ability(tagging);
CREATE INDEX index_ability_name on ability(name);
CREATE INDEX index_ability_subname on ability(subname);
CREATE INDEX index_ability_sign on ability(sign);
CREATE INDEX index_ability_kind on ability(kind);

