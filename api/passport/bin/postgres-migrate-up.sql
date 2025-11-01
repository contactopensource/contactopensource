CREATE TABLE passport (
);

CREATE INDEX passport_id_index on passport(id);
CREATE INDEX passport_created_at_index on passport(created_at);
CREATE INDEX passport_created_by_index on passport(created_by);
CREATE INDEX passport_updated_at_index on passport(updated_at);
CREATE INDEX passport_updated_by_index on passport(updated_by);
CREATE INDEX passport_retired_at_index on passport(retired_at);
CREATE INDEX passport_retired_by_index on passport(retired_by);
CREATE INDEX passport_locale_code_index on passport(locale_code);
CREATE INDEX passport_tagging_index on passport(tagging);
CREATE INDEX passport_name_index on passport(name);
CREATE INDEX passport_subname_index on passport(subname);
CREATE INDEX passport_sign_index on passport(sign);
CREATE INDEX passport_kind_index on passport(kind);

