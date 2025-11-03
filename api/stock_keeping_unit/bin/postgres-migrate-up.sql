CREATE TABLE stock_keeping_unit (
);

CREATE INDEX stock_keeping_unit_id_index on stock_keeping_unit(id);
CREATE INDEX stock_keeping_unit_created_at_index on stock_keeping_unit(created_at);
CREATE INDEX stock_keeping_unit_created_by_index on stock_keeping_unit(created_by);
CREATE INDEX stock_keeping_unit_updated_at_index on stock_keeping_unit(updated_at);
CREATE INDEX stock_keeping_unit_updated_by_index on stock_keeping_unit(updated_by);
CREATE INDEX stock_keeping_unit_retired_at_index on stock_keeping_unit(retired_at);
CREATE INDEX stock_keeping_unit_retired_by_index on stock_keeping_unit(retired_by);
CREATE INDEX stock_keeping_unit_locale_code_index on stock_keeping_unit(locale_code);
CREATE INDEX stock_keeping_unit_tagging_index on stock_keeping_unit(tagging);
CREATE INDEX stock_keeping_unit_name_index on stock_keeping_unit(name);
CREATE INDEX stock_keeping_unit_subname_index on stock_keeping_unit(subname);
CREATE INDEX stock_keeping_unit_sign_index on stock_keeping_unit(sign);
CREATE INDEX stock_keeping_unit_kind_index on stock_keeping_unit(kind);
CREATE INDEX stock_keeping_unit_code_index on stock_keeping_unit(code);

