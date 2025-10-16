CREATE TABLE timestamp_range (
);

CREATE INDEX index_timestamp_range_id on timestamp_range(id);
CREATE INDEX index_timestamp_range_created_at on timestamp_range(created_at);
CREATE INDEX index_timestamp_range_created_by on timestamp_range(created_by);
CREATE INDEX index_timestamp_range_updated_at on timestamp_range(updated_at);
CREATE INDEX index_timestamp_range_updated_by on timestamp_range(updated_by);
CREATE INDEX index_timestamp_range_deleted_at on timestamp_range(deleted_at);
CREATE INDEX index_timestamp_range_deleted_by on timestamp_range(deleted_by);
CREATE INDEX index_timestamp_range_locale_code on timestamp_range(locale_code);
CREATE INDEX index_timestamp_range_tagging on timestamp_range(tagging);
CREATE INDEX index_timestamp_range_name on timestamp_range(name);
CREATE INDEX index_timestamp_range_subname on timestamp_range(subname);
CREATE INDEX index_timestamp_range_sign on timestamp_range(sign);
CREATE INDEX index_timestamp_range_kind on timestamp_range(kind);

