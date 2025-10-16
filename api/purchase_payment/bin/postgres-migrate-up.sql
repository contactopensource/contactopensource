CREATE TABLE purchase_payment (
);

CREATE INDEX index_purchase_payment_id on purchase_payment(id);
CREATE INDEX index_purchase_payment_created_at on purchase_payment(created_at);
CREATE INDEX index_purchase_payment_created_by on purchase_payment(created_by);
CREATE INDEX index_purchase_payment_updated_at on purchase_payment(updated_at);
CREATE INDEX index_purchase_payment_updated_by on purchase_payment(updated_by);
CREATE INDEX index_purchase_payment_deleted_at on purchase_payment(deleted_at);
CREATE INDEX index_purchase_payment_deleted_by on purchase_payment(deleted_by);
CREATE INDEX index_purchase_payment_locale_code on purchase_payment(locale_code);
CREATE INDEX index_purchase_payment_tagging on purchase_payment(tagging);
CREATE INDEX index_purchase_payment_name on purchase_payment(name);
CREATE INDEX index_purchase_payment_subname on purchase_payment(subname);
CREATE INDEX index_purchase_payment_sign on purchase_payment(sign);
CREATE INDEX index_purchase_payment_kind on purchase_payment(kind);
CREATE INDEX index_purchase_payment_key on purchase_payment(key);

