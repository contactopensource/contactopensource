CREATE TABLE currency_type (
);

CREATE INDEX index_currency_type_id on currency_type(id);
CREATE INDEX index_currency_type_created_at on currency_type(created_at);
CREATE INDEX index_currency_type_created_by on currency_type(created_by);
CREATE INDEX index_currency_type_updated_at on currency_type(updated_at);
CREATE INDEX index_currency_type_updated_by on currency_type(updated_by);
CREATE INDEX index_currency_type_retired_at on currency_type(retired_at);
CREATE INDEX index_currency_type_retired_by on currency_type(retired_by);
CREATE INDEX index_currency_type_locale_code on currency_type(locale_code);
CREATE INDEX index_currency_type_tagging on currency_type(tagging);
CREATE INDEX index_currency_type_name on currency_type(name);
CREATE INDEX index_currency_type_code on currency_type(code);
CREATE INDEX index_currency_type_symbol on currency_type(symbol);

