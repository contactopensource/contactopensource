CREATE TABLE ability (
);

CREATE INDEX ability_id_index on ability(id);
CREATE INDEX ability_created_at_index on ability(created_at);
CREATE INDEX ability_created_by_index on ability(created_by);
CREATE INDEX ability_updated_at_index on ability(updated_at);
CREATE INDEX ability_updated_by_index on ability(updated_by);
CREATE INDEX ability_retired_at_index on ability(retired_at);
CREATE INDEX ability_retired_by_index on ability(retired_by);
CREATE INDEX ability_locale_code_index on ability(locale_code);
CREATE INDEX ability_tagging_index on ability(tagging);
CREATE INDEX ability_name_index on ability(name);
CREATE INDEX ability_subname_index on ability(subname);
CREATE INDEX ability_slug_index on ability(slug);
CREATE INDEX ability_sign_index on ability(sign);
CREATE INDEX ability_kind_index on ability(kind);

