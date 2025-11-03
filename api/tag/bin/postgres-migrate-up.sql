CREATE TABLE tag (
);

CREATE INDEX tag_id_index on tag(id);
CREATE INDEX tag_created_at_index on tag(created_at);
CREATE INDEX tag_created_by_index on tag(created_by);
CREATE INDEX tag_updated_at_index on tag(updated_at);
CREATE INDEX tag_updated_by_index on tag(updated_by);
CREATE INDEX tag_retired_at_index on tag(retired_at);
CREATE INDEX tag_retired_by_index on tag(retired_by);
CREATE INDEX tag_locale_code_index on tag(locale_code);
CREATE INDEX tag_tagging_index on tag(tagging);
CREATE INDEX tag_name_index on tag(name);
CREATE INDEX tag_subname_index on tag(subname);
CREATE INDEX tag_sign_index on tag(sign);
CREATE INDEX tag_kind_index on tag(kind);

