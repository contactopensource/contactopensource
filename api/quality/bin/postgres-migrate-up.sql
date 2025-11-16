CREATE TABLE quality (
);

CREATE INDEX quality_id_index on quality(id);
CREATE INDEX quality_created_at_index on quality(created_at);
CREATE INDEX quality_created_by_index on quality(created_by);
CREATE INDEX quality_updated_at_index on quality(updated_at);
CREATE INDEX quality_updated_by_index on quality(updated_by);
CREATE INDEX quality_retired_at_index on quality(retired_at);
CREATE INDEX quality_retired_by_index on quality(retired_by);
CREATE INDEX quality_locale_code_index on quality(locale_code);
CREATE INDEX quality_tagging_index on quality(tagging);
CREATE INDEX quality_name_index on quality(name);
CREATE INDEX quality_subname_index on quality(subname);
CREATE INDEX quality_slug_index on quality(slug);
CREATE INDEX quality_sign_index on quality(sign);
CREATE INDEX quality_kind_index on quality(kind);

