CREATE TABLE microdata_item (
);

CREATE INDEX index_microdata_item_id on microdata_item(id);
CREATE INDEX index_microdata_item_created_at on microdata_item(created_at);
CREATE INDEX index_microdata_item_created_by on microdata_item(created_by);
CREATE INDEX index_microdata_item_updated_at on microdata_item(updated_at);
CREATE INDEX index_microdata_item_updated_by on microdata_item(updated_by);
CREATE INDEX index_microdata_item_deleted_at on microdata_item(deleted_at);
CREATE INDEX index_microdata_item_deleted_by on microdata_item(deleted_by);
CREATE INDEX index_microdata_item_locale_code on microdata_item(locale_code);
CREATE INDEX index_microdata_item_tagging on microdata_item(tagging);

