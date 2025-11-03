CREATE TABLE book (
);

CREATE INDEX book_id_index on book(id);
CREATE INDEX book_created_at_index on book(created_at);
CREATE INDEX book_created_by_index on book(created_by);
CREATE INDEX book_updated_at_index on book(updated_at);
CREATE INDEX book_updated_by_index on book(updated_by);
CREATE INDEX book_retired_at_index on book(retired_at);
CREATE INDEX book_retired_by_index on book(retired_by);
CREATE INDEX book_locale_code_index on book(locale_code);
CREATE INDEX book_tagging_index on book(tagging);
CREATE INDEX book_name_index on book(name);
CREATE INDEX book_subname_index on book(subname);
CREATE INDEX book_sign_index on book(sign);
CREATE INDEX book_kind_index on book(kind);

