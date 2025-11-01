CREATE TABLE place (
);

CREATE INDEX index_place_id on place(id);
CREATE INDEX index_place_created_at on place(created_at);
CREATE INDEX index_place_created_by on place(created_by);
CREATE INDEX index_place_updated_at on place(updated_at);
CREATE INDEX index_place_updated_by on place(updated_by);
CREATE INDEX index_place_retired_at on place(retired_at);
CREATE INDEX index_place_retired_by on place(retired_by);
CREATE INDEX index_place_locale_code on place(locale_code);
CREATE INDEX index_place_tagging on place(tagging);
CREATE INDEX index_place_name on place(name);
CREATE INDEX index_place_subname on place(subname);
CREATE INDEX index_place_sign on place(sign);
CREATE INDEX index_place_kind on place(kind);

