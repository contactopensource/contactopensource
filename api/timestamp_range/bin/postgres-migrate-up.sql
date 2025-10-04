CREATE TABLE tag (
);

CREATE INDEX index_tag_id on tag(id);
CREATE INDEX index_tag_created_at on tag(created_at);
CREATE INDEX index_tag_created_by on tag(created_by);
CREATE INDEX index_tag_updated_at on tag(updated_at);
CREATE INDEX index_tag_updated_by on tag(updated_by);
CREATE INDEX index_tag_deleted_at on tag(deleted_at);
CREATE INDEX index_tag_deleted_by on tag(deleted_by);
CREATE INDEX index_tag_locale_code on tag(locale_code);
CREATE INDEX index_tag_sign on tag(sign);
CREATE INDEX index_tag_kind on tag(kind);
CREATE INDEX index_tag_name on tag(name);
CREATE INDEX index_tag_subname on tag(subname);

