CREATE TABLE currency_type (
);

CREATE INDEX currency_type_id_index on currency_type(id);
CREATE INDEX currency_type_created_at_index on currency_type(created_at);
CREATE INDEX currency_type_created_by_index on currency_type(created_by);
CREATE INDEX currency_type_updated_at_index on currency_type(updated_at);
CREATE INDEX currency_type_updated_by_index on currency_type(updated_by);
CREATE INDEX currency_type_retired_at_index on currency_type(retired_at);
CREATE INDEX currency_type_retired_by_index on currency_type(retired_by);
CREATE INDEX currency_type_locale_code_index on currency_type(locale_code);
CREATE INDEX currency_type_tagging_index on currency_type(tagging);
CREATE INDEX currency_type_name_index on currency_type(name);
CREATE INDEX currency_type_code_index on currency_type(code);
CREATE INDEX currency_type_symbol_index on currency_type(symbol);

