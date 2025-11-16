CREATE TABLE access_attribute (
);

CREATE INDEX access_attribute_id_index on access_attribute(id);
CREATE INDEX access_attribute_created_at_index on access_attribute(created_at);
CREATE INDEX access_attribute_created_by_index on access_attribute(created_by);
CREATE INDEX access_attribute_updated_at_index on access_attribute(updated_at);
CREATE INDEX access_attribute_updated_by_index on access_attribute(updated_by);
CREATE INDEX access_attribute_retired_at_index on access_attribute(retired_at);
CREATE INDEX access_attribute_retired_by_index on access_attribute(retired_by);
CREATE INDEX access_attribute_locale_code_index on access_attribute(locale_code);
CREATE INDEX access_attribute_tagging_index on access_attribute(tagging);
CREATE INDEX access_attribute_name_index on access_attribute(name);
CREATE INDEX access_attribute_subname_index on access_attribute(subname);
CREATE INDEX access_attribute_slug_index on access_attribute(slug);
CREATE INDEX access_attribute_sign_index on access_attribute(sign);
CREATE INDEX access_attribute_kind_index on access_attribute(kind);
CREATE INDEX access_attribute_key_index on access_attribute(key);

