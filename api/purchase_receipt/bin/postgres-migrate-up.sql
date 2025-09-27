CREATE TABLE purchase_receipt (
);

CREATE INDEX index_purchase_receipt_id on purchase_receipt(id);
CREATE INDEX index_purchase_receipt_sign on purchase_receipt(sign);
CREATE INDEX index_purchase_receipt_created_at on purchase_receipt(created_at);
CREATE INDEX index_purchase_receipt_created_by on purchase_receipt(created_by);
CREATE INDEX index_purchase_receipt_updated_at on purchase_receipt(updated_at);
CREATE INDEX index_purchase_receipt_updated_by on purchase_receipt(updated_by);
CREATE INDEX index_purchase_receipt_deleted_at on purchase_receipt(deleted_at);
CREATE INDEX index_purchase_receipt_deleted_by on purchase_receipt(deleted_by);
CREATE INDEX index_purchase_receipt_locale_code on purchase_receipt(locale_code);
CREATE INDEX index_purchase_receipt_sign on purchase_receipt(sign);
CREATE INDEX index_purchase_receipt_kind on purchase_receipt(kind);
CREATE INDEX index_purchase_receipt_title on purchase_receipt(title);
CREATE INDEX index_purchase_receipt_subtitle on purchase_receipt(subtitle);
CREATE INDEX index_purchase_receipt_key on purchase_receipt(key);

