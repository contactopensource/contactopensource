CREATE TABLE tag (
);

CREATE INDEX index_tag_id on tag(id);
CREATE INDEX index_tag_sign on tag(sign);
CREATE INDEX index_tag_created_at on tag(created_at);
CREATE INDEX index_tag_created_by on tag(created_by);
CREATE INDEX index_tag_updated_at on tag(updated_at);
CREATE INDEX index_tag_updated_by on tag(updated_by);
CREATE INDEX index_tag_deleted_at on tag(deleted_at);
CREATE INDEX index_tag_deleted_by on tag(deleted_by);
CREATE INDEX index_tag_locale_id on tag(locale_id);
CREATE INDEX index_tag_title on tag(title);
CREATE INDEX index_tag_subtitle on tag(subtitle);

