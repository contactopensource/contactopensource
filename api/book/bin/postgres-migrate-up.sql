CREATE TABLE book (
);

CREATE INDEX index_book_id on book(id);
CREATE INDEX index_book_created_at on book(created_at);
CREATE INDEX index_book_created_by on book(created_by);
CREATE INDEX index_book_updated_at on book(updated_at);
CREATE INDEX index_book_updated_by on book(updated_by);
CREATE INDEX index_book_deleted_at on book(deleted_at);
CREATE INDEX index_book_deleted_by on book(deleted_by);
CREATE INDEX index_book_locale_code on book(locale_code);
CREATE INDEX index_book_tagging on book(tagging);
CREATE INDEX index_book_name on book(name);
CREATE INDEX index_book_subname on book(subname);
CREATE INDEX index_book_sign on book(sign);
CREATE INDEX index_book_kind on book(kind);

