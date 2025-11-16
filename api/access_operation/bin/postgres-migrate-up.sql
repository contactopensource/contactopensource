CREATE TABLE access_operation (
);

CREATE INDEX access_operation_id_index on access_operation(id);
CREATE INDEX access_operation_created_at_index on access_operation(created_at);
CREATE INDEX access_operation_created_by_index on access_operation(created_by);
CREATE INDEX access_operation_updated_at_index on access_operation(updated_at);
CREATE INDEX access_operation_updated_by_index on access_operation(updated_by);
CREATE INDEX access_operation_retired_at_index on access_operation(retired_at);
CREATE INDEX access_operation_retired_by_index on access_operation(retired_by);
CREATE INDEX access_operation_locale_code_index on access_operation(locale_code);
CREATE INDEX access_operation_tagging_index on access_operation(tagging);
CREATE INDEX access_operation_name_index on access_operation(name);
CREATE INDEX access_operation_subname_index on access_operation(subname);
CREATE INDEX access_operation_slug_index on access_operation(slug);
CREATE INDEX access_operation_sign_index on access_operation(sign);
CREATE INDEX access_operation_kind_index on access_operation(kind);
CREATE INDEX access_operation_key_index on access_operation(key);

