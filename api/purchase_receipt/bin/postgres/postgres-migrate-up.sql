CREATE TABLE purchase_receipt (
);

CREATE INDEX purchase_receipt_id_index on purchase_receipt(id);
CREATE INDEX purchase_receipt_created_at_index on purchase_receipt(created_at);
CREATE INDEX purchase_receipt_created_by_index on purchase_receipt(created_by);
CREATE INDEX purchase_receipt_updated_at_index on purchase_receipt(updated_at);
CREATE INDEX purchase_receipt_updated_by_index on purchase_receipt(updated_by);
CREATE INDEX purchase_receipt_retired_at_index on purchase_receipt(retired_at);
CREATE INDEX purchase_receipt_retired_by_index on purchase_receipt(retired_by);
CREATE INDEX purchase_receipt_locale_code_index on purchase_receipt(locale_code);
CREATE INDEX purchase_receipt_tagging_index on purchase_receipt(tagging);
CREATE INDEX purchase_receipt_name_index on purchase_receipt(name);
CREATE INDEX purchase_receipt_subname_index on purchase_receipt(subname);
CREATE INDEX purchase_receipt_slug_index on purchase_receipt(slug);
CREATE INDEX purchase_receipt_sign_index on purchase_receipt(sign);
CREATE INDEX purchase_receipt_kind_index on purchase_receipt(kind);
CREATE INDEX purchase_receipt_key_index on purchase_receipt(key);

