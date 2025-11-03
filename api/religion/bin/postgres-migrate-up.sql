CREATE TABLE religion (
);

CREATE INDEX religion_id_index on religion(id);
CREATE INDEX religion_created_at_index on religion(created_at);
CREATE INDEX religion_created_by_index on religion(created_by);
CREATE INDEX religion_updated_at_index on religion(updated_at);
CREATE INDEX religion_updated_by_index on religion(updated_by);
CREATE INDEX religion_retired_at_index on religion(retired_at);
CREATE INDEX religion_retired_by_index on religion(retired_by);
CREATE INDEX religion_locale_code_index on religion(locale_code);
CREATE INDEX religion_tagging_index on religion(tagging);
CREATE INDEX religion_name_index on religion(name);
CREATE INDEX religion_subname_index on religion(subname);
CREATE INDEX religion_sign_index on religion(sign);
CREATE INDEX religion_kind_index on religion(kind);

