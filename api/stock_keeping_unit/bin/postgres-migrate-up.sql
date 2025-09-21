CREATE TABLE stock_keeping_unit (
);

CREATE INDEX index_stock_keeping_unit_id on stock_keeping_unit(id);
CREATE INDEX index_stock_keeping_unit_sign on stock_keeping_unit(sign);
CREATE INDEX index_stock_keeping_unit_created_at on stock_keeping_unit(created_at);
CREATE INDEX index_stock_keeping_unit_created_by on stock_keeping_unit(created_by);
CREATE INDEX index_stock_keeping_unit_updated_at on stock_keeping_unit(updated_at);
CREATE INDEX index_stock_keeping_unit_updated_by on stock_keeping_unit(updated_by);
CREATE INDEX index_stock_keeping_unit_deleted_at on stock_keeping_unit(deleted_at);
CREATE INDEX index_stock_keeping_unit_deleted_by on stock_keeping_unit(deleted_by);
CREATE INDEX index_stock_keeping_unit_locale_id on stock_keeping_unit(locale_id);
CREATE INDEX index_stock_keeping_unit_title on stock_keeping_unit(title);
CREATE INDEX index_stock_keeping_unit_subtitle on stock_keeping_unit(subtitle);
CREATE INDEX index_stock_keeping_unit_code on stock_keeping_unit(code);

