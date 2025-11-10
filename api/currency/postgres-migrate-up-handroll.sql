CREATE TABLE currency (
  id char(3),
  locale_code text,
  name text not null,
  number smallint not null CONSTRAINT currency_number_check CHECK (number >=1 AND number <= 999),
  symbol text not null CONSTRAINT currency_symbol_check CHECK (char_length(symbol) <= 4),
  position boolean not null
)

CREATE INDEX currency_index_gto
  ON currency
  USING GIN ((
    id
      || ' ' ||
    name
      || ' ' ||
    number
      || ' ' ||
    symbol
  ) gin_trgm_ops);

CREATE INDEX currency_locale_code_index ON currency (locale_code);
CREATE INDEX currency_name_index ON currency (name);
CREATE INDEX currency_name_index_tpo ON currency (name text_pattern_ops);
CREATE INDEX currency_number_index ON currency (number);
CREATE INDEX currency_symbol_index ON currency (symbol);
