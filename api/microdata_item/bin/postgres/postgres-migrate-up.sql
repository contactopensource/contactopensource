CREATE TABLE microdata_item (
);

CREATE INDEX microdata_item_id_index on microdata_item(id);
CREATE INDEX microdata_item_created_at_index on microdata_item(created_at);
CREATE INDEX microdata_item_created_by_index on microdata_item(created_by);
CREATE INDEX microdata_item_updated_at_index on microdata_item(updated_at);
CREATE INDEX microdata_item_updated_by_index on microdata_item(updated_by);
CREATE INDEX microdata_item_retired_at_index on microdata_item(retired_at);
CREATE INDEX microdata_item_retired_by_index on microdata_item(retired_by);
CREATE INDEX microdata_item_locale_code_index on microdata_item(locale_code);
CREATE INDEX microdata_item_tagging_index on microdata_item(tagging);

