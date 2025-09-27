CREATE TABLE access_operation (
);

CREATE INDEX index_access_operation_id on access_operation(id);
CREATE INDEX index_access_operation_sign on access_operation(sign);
CREATE INDEX index_access_operation_created_at on access_operation(created_at);
CREATE INDEX index_access_operation_created_by on access_operation(created_by);
CREATE INDEX index_access_operation_updated_at on access_operation(updated_at);
CREATE INDEX index_access_operation_updated_by on access_operation(updated_by);
CREATE INDEX index_access_operation_deleted_at on access_operation(deleted_at);
CREATE INDEX index_access_operation_deleted_by on access_operation(deleted_by);
CREATE INDEX index_access_operation_locale_code on access_operation(locale_code);
CREATE INDEX index_access_operation_sign on access_operation(sign);
CREATE INDEX index_access_operation_kind on access_operation(kind);
CREATE INDEX index_access_operation_title on access_operation(title);
CREATE INDEX index_access_operation_subtitle on access_operation(subtitle);
CREATE INDEX index_access_operation_key on access_operation(key);

