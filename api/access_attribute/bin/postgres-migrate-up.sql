CREATE TABLE access_attribute (
);

CREATE INDEX index_access_attribute_id on access_attribute(id);
CREATE INDEX index_access_attribute_created_at on access_attribute(created_at);
CREATE INDEX index_access_attribute_created_by on access_attribute(created_by);
CREATE INDEX index_access_attribute_updated_at on access_attribute(updated_at);
CREATE INDEX index_access_attribute_updated_by on access_attribute(updated_by);
CREATE INDEX index_access_attribute_deleted_at on access_attribute(deleted_at);
CREATE INDEX index_access_attribute_deleted_by on access_attribute(deleted_by);
CREATE INDEX index_access_attribute_locale_code on access_attribute(locale_code);
CREATE INDEX index_access_attribute_sign on access_attribute(sign);
CREATE INDEX index_access_attribute_kind on access_attribute(kind);
CREATE INDEX index_access_attribute_name on access_attribute(name);
CREATE INDEX index_access_attribute_subname on access_attribute(subname);
CREATE INDEX index_access_attribute_key on access_attribute(key);

