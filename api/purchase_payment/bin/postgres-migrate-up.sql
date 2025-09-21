CREATE TABLE purchase_payment (
);

CREATE INDEX index_purchase_payment_id on purchase_payment(id);
CREATE INDEX index_purchase_payment_sign on purchase_payment(sign);
CREATE INDEX index_purchase_payment_created_at on purchase_payment(created_at);
CREATE INDEX index_purchase_payment_created_by on purchase_payment(created_by);
CREATE INDEX index_purchase_payment_updated_at on purchase_payment(updated_at);
CREATE INDEX index_purchase_payment_updated_by on purchase_payment(updated_by);
CREATE INDEX index_purchase_payment_deleted_at on purchase_payment(deleted_at);
CREATE INDEX index_purchase_payment_deleted_by on purchase_payment(deleted_by);
CREATE INDEX index_purchase_payment_locale_id on purchase_payment(locale_id);
CREATE INDEX index_purchase_payment_title on purchase_payment(title);
CREATE INDEX index_purchase_payment_subtitle on purchase_payment(subtitle);
CREATE INDEX index_purchase_payment_key on purchase_payment(key);

