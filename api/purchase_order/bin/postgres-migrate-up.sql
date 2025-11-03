CREATE TABLE purchase_order (
);

CREATE INDEX purchase_order_id_index on purchase_order(id);
CREATE INDEX purchase_order_created_at_index on purchase_order(created_at);
CREATE INDEX purchase_order_created_by_index on purchase_order(created_by);
CREATE INDEX purchase_order_updated_at_index on purchase_order(updated_at);
CREATE INDEX purchase_order_updated_by_index on purchase_order(updated_by);
CREATE INDEX purchase_order_retired_at_index on purchase_order(retired_at);
CREATE INDEX purchase_order_retired_by_index on purchase_order(retired_by);
CREATE INDEX purchase_order_locale_code_index on purchase_order(locale_code);
CREATE INDEX purchase_order_tagging_index on purchase_order(tagging);
CREATE INDEX purchase_order_name_index on purchase_order(name);
CREATE INDEX purchase_order_subname_index on purchase_order(subname);
CREATE INDEX purchase_order_sign_index on purchase_order(sign);
CREATE INDEX purchase_order_kind_index on purchase_order(kind);
CREATE INDEX purchase_order_key_index on purchase_order(key);

