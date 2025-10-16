CREATE TABLE credential (
);

CREATE INDEX index_credential_id on credential(id);
CREATE INDEX index_credential_created_at on credential(created_at);
CREATE INDEX index_credential_created_by on credential(created_by);
CREATE INDEX index_credential_updated_at on credential(updated_at);
CREATE INDEX index_credential_updated_by on credential(updated_by);
CREATE INDEX index_credential_deleted_at on credential(deleted_at);
CREATE INDEX index_credential_deleted_by on credential(deleted_by);
CREATE INDEX index_credential_locale_code on credential(locale_code);
CREATE INDEX index_credential_tagging on credential(tagging);
CREATE INDEX index_credential_name on credential(name);
CREATE INDEX index_credential_subname on credential(subname);
CREATE INDEX index_credential_sign on credential(sign);
CREATE INDEX index_credential_kind on credential(kind);

