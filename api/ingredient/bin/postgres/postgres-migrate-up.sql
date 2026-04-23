CREATE TABLE ingredient (
);

CREATE INDEX ingredient_id_index on ingredient(id);
CREATE INDEX ingredient_created_at_index on ingredient(created_at);
CREATE INDEX ingredient_created_by_index on ingredient(created_by);
CREATE INDEX ingredient_updated_at_index on ingredient(updated_at);
CREATE INDEX ingredient_updated_by_index on ingredient(updated_by);
CREATE INDEX ingredient_retired_at_index on ingredient(retired_at);
CREATE INDEX ingredient_retired_by_index on ingredient(retired_by);
CREATE INDEX ingredient_locale_code_index on ingredient(locale_code);
CREATE INDEX ingredient_tagging_index on ingredient(tagging);
CREATE INDEX ingredient_name_index on ingredient(name);
CREATE INDEX ingredient_subname_index on ingredient(subname);
CREATE INDEX ingredient_slug_index on ingredient(slug);
CREATE INDEX ingredient_sign_index on ingredient(sign);
CREATE INDEX ingredient_kind_index on ingredient(kind);
CREATE INDEX ingredient_name_index on ingredient(name);
CREATE INDEX ingredient_description_index on ingredient(description);

