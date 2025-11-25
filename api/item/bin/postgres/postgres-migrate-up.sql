CREATE TABLE item (
);

CREATE INDEX item_id_index on item(id);
CREATE INDEX item_created_at_index on item(created_at);
CREATE INDEX item_created_by_index on item(created_by);
CREATE INDEX item_updated_at_index on item(updated_at);
CREATE INDEX item_updated_by_index on item(updated_by);
CREATE INDEX item_retired_at_index on item(retired_at);
CREATE INDEX item_retired_by_index on item(retired_by);
CREATE INDEX item_locale_code_index on item(locale_code);
CREATE INDEX item_tagging_index on item(tagging);
CREATE INDEX item_name_index on item(name);
CREATE INDEX item_subname_index on item(subname);
CREATE INDEX item_slug_index on item(slug);
CREATE INDEX item_sign_index on item(sign);
CREATE INDEX item_kind_index on item(kind);

