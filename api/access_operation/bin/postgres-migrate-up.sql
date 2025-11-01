CREATE TABLE access_operation (
);

CREATE INDEX index_access_operation_id on access_operation(id);
CREATE INDEX index_access_operation_created_at on access_operation(created_at);
CREATE INDEX index_access_operation_created_by on access_operation(created_by);
CREATE INDEX index_access_operation_updated_at on access_operation(updated_at);
CREATE INDEX index_access_operation_updated_by on access_operation(updated_by);
CREATE INDEX index_access_operation_retired_at on access_operation(retired_at);
CREATE INDEX index_access_operation_retired_by on access_operation(retired_by);
CREATE INDEX index_access_operation_locale_code on access_operation(locale_code);
CREATE INDEX index_access_operation_tagging on access_operation(tagging);
CREATE INDEX index_access_operation_name on access_operation(name);
CREATE INDEX index_access_operation_subname on access_operation(subname);
CREATE INDEX index_access_operation_sign on access_operation(sign);
CREATE INDEX index_access_operation_kind on access_operation(kind);
CREATE INDEX index_access_operation_key on access_operation(key);

