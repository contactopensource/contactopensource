CREATE TABLE tag (
);

CREATE INDEX index_tag_id on tag(id);
CREATE INDEX index_tag_created_at on tag(created_at);
CREATE INDEX index_tag_created_by on tag(created_by);
CREATE INDEX index_tag_updated_at on tag(updated_at);
CREATE INDEX index_tag_updated_by on tag(updated_by);
CREATE INDEX index_tag_retired_at on tag(retired_at);
CREATE INDEX index_tag_retired_by on tag(retired_by);
CREATE INDEX index_tag_locale_code on tag(locale_code);
CREATE INDEX index_tag_tagging on tag(tagging);
CREATE INDEX index_tag_name on tag(name);
CREATE INDEX index_tag_subname on tag(subname);
CREATE INDEX index_tag_sign on tag(sign);
CREATE INDEX index_tag_kind on tag(kind);

