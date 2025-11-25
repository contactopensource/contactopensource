CREATE TABLE credential (
);

CREATE INDEX credential_id_index on credential(id);
CREATE INDEX credential_created_at_index on credential(created_at);
CREATE INDEX credential_created_by_index on credential(created_by);
CREATE INDEX credential_updated_at_index on credential(updated_at);
CREATE INDEX credential_updated_by_index on credential(updated_by);
CREATE INDEX credential_retired_at_index on credential(retired_at);
CREATE INDEX credential_retired_by_index on credential(retired_by);
CREATE INDEX credential_locale_code_index on credential(locale_code);
CREATE INDEX credential_tagging_index on credential(tagging);
CREATE INDEX credential_name_index on credential(name);
CREATE INDEX credential_subname_index on credential(subname);
CREATE INDEX credential_slug_index on credential(slug);
CREATE INDEX credential_sign_index on credential(sign);
CREATE INDEX credential_kind_index on credential(kind);

