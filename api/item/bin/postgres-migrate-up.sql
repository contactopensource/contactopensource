CREATE TABLE item (
);

CREATE INDEX index_item_id on item(id);
CREATE INDEX index_item_sign on item(sign);
CREATE INDEX index_item_created_at on item(created_at);
CREATE INDEX index_item_created_by on item(created_by);
CREATE INDEX index_item_updated_at on item(updated_at);
CREATE INDEX index_item_updated_by on item(updated_by);
CREATE INDEX index_item_deleted_at on item(deleted_at);
CREATE INDEX index_item_deleted_by on item(deleted_by);
CREATE INDEX index_item_locale_id on item(locale_id);
CREATE INDEX index_item_title on item(title);
CREATE INDEX index_item_subtitle on item(subtitle);

