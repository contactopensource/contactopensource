CREATE TABLE currency (
);

CREATE INDEX currency_id_index on currency(id);
CREATE INDEX currency_created_at_index on currency(created_at);
CREATE INDEX currency_created_by_index on currency(created_by);
CREATE INDEX currency_updated_at_index on currency(updated_at);
CREATE INDEX currency_updated_by_index on currency(updated_by);
CREATE INDEX currency_retired_at_index on currency(retired_at);
CREATE INDEX currency_retired_by_index on currency(retired_by);
CREATE INDEX currency_locale_code_index on currency(locale_code);
CREATE INDEX currency_tagging_index on currency(tagging);
CREATE INDEX currency_name_index on currency(name);
CREATE INDEX currency_code_index on currency(code);
CREATE INDEX currency_symbol_index on currency(symbol);
