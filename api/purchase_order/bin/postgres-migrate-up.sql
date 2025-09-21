CREATE TABLE purchase_order (
);

CREATE INDEX index_purchase_order_id on purchase_order(id);
CREATE INDEX index_purchase_order_sign on purchase_order(sign);
CREATE INDEX index_purchase_order_created_at on purchase_order(created_at);
CREATE INDEX index_purchase_order_created_by on purchase_order(created_by);
CREATE INDEX index_purchase_order_updated_at on purchase_order(updated_at);
CREATE INDEX index_purchase_order_updated_by on purchase_order(updated_by);
CREATE INDEX index_purchase_order_deleted_at on purchase_order(deleted_at);
CREATE INDEX index_purchase_order_deleted_by on purchase_order(deleted_by);
CREATE INDEX index_purchase_order_locale_id on purchase_order(locale_id);
CREATE INDEX index_purchase_order_title on purchase_order(title);
CREATE INDEX index_purchase_order_subtitle on purchase_order(subtitle);
CREATE INDEX index_purchase_order_key on purchase_order(key);

