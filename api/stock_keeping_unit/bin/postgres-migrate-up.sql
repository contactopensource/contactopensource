CREATE TABLE stock_keeping_unit (
);

CREATE INDEX index_stock_keeping_unit_id on stock_keeping_unit(id);
CREATE INDEX index_stock_keeping_unit_created_at on stock_keeping_unit(created_at);
CREATE INDEX index_stock_keeping_unit_created_by on stock_keeping_unit(created_by);
CREATE INDEX index_stock_keeping_unit_updated_at on stock_keeping_unit(updated_at);
CREATE INDEX index_stock_keeping_unit_updated_by on stock_keeping_unit(updated_by);
CREATE INDEX index_stock_keeping_unit_retired_at on stock_keeping_unit(retired_at);
CREATE INDEX index_stock_keeping_unit_retired_by on stock_keeping_unit(retired_by);
CREATE INDEX index_stock_keeping_unit_locale_code on stock_keeping_unit(locale_code);
CREATE INDEX index_stock_keeping_unit_tagging on stock_keeping_unit(tagging);
CREATE INDEX index_stock_keeping_unit_name on stock_keeping_unit(name);
CREATE INDEX index_stock_keeping_unit_subname on stock_keeping_unit(subname);
CREATE INDEX index_stock_keeping_unit_sign on stock_keeping_unit(sign);
CREATE INDEX index_stock_keeping_unit_kind on stock_keeping_unit(kind);
CREATE INDEX index_stock_keeping_unit_code on stock_keeping_unit(code);

