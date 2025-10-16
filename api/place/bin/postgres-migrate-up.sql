CREATE TABLE place (
);

CREATE INDEX index_place_id on place(id);
CREATE INDEX index_place_created_at on place(created_at);
CREATE INDEX index_place_created_by on place(created_by);
CREATE INDEX index_place_updated_at on place(updated_at);
CREATE INDEX index_place_updated_by on place(updated_by);
CREATE INDEX index_place_deleted_at on place(deleted_at);
CREATE INDEX index_place_deleted_by on place(deleted_by);
CREATE INDEX index_place_locale_code on place(locale_code);
CREATE INDEX index_place_tagging on place(tagging);
CREATE INDEX index_place_name on place(name);
CREATE INDEX index_place_subname on place(subname);
CREATE INDEX index_place_sign on place(sign);
CREATE INDEX index_place_kind on place(kind);

