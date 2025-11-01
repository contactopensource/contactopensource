CREATE TABLE religion (
);

CREATE INDEX index_religion_id on religion(id);
CREATE INDEX index_religion_created_at on religion(created_at);
CREATE INDEX index_religion_created_by on religion(created_by);
CREATE INDEX index_religion_updated_at on religion(updated_at);
CREATE INDEX index_religion_updated_by on religion(updated_by);
CREATE INDEX index_religion_retired_at on religion(retired_at);
CREATE INDEX index_religion_retired_by on religion(retired_by);
CREATE INDEX index_religion_locale_code on religion(locale_code);
CREATE INDEX index_religion_tagging on religion(tagging);
CREATE INDEX index_religion_name on religion(name);
CREATE INDEX index_religion_subname on religion(subname);
CREATE INDEX index_religion_sign on religion(sign);
CREATE INDEX index_religion_kind on religion(kind);

