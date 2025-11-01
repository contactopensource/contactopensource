CREATE TABLE item (
);

CREATE INDEX index_item_id on item(id);
CREATE INDEX index_item_created_at on item(created_at);
CREATE INDEX index_item_created_by on item(created_by);
CREATE INDEX index_item_updated_at on item(updated_at);
CREATE INDEX index_item_updated_by on item(updated_by);
CREATE INDEX index_item_retired_at on item(retired_at);
CREATE INDEX index_item_retired_by on item(retired_by);
CREATE INDEX index_item_locale_code on item(locale_code);
CREATE INDEX index_item_tagging on item(tagging);
CREATE INDEX index_item_name on item(name);
CREATE INDEX index_item_subname on item(subname);
CREATE INDEX index_item_sign on item(sign);
CREATE INDEX index_item_kind on item(kind);

