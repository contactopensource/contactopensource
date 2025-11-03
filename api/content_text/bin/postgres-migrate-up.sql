CREATE TABLE content_text (
);

CREATE INDEX content_text_id_index on content_text(id);
CREATE INDEX content_text_created_at_index on content_text(created_at);
CREATE INDEX content_text_created_by_index on content_text(created_by);
CREATE INDEX content_text_updated_at_index on content_text(updated_at);
CREATE INDEX content_text_updated_by_index on content_text(updated_by);
CREATE INDEX content_text_retired_at_index on content_text(retired_at);
CREATE INDEX content_text_retired_by_index on content_text(retired_by);
CREATE INDEX content_text_locale_code_index on content_text(locale_code);
CREATE INDEX content_text_tagging_index on content_text(tagging);
CREATE INDEX content_text_name_index on content_text(name);
CREATE INDEX content_text_subname_index on content_text(subname);
CREATE INDEX content_text_sign_index on content_text(sign);
CREATE INDEX content_text_kind_index on content_text(kind);

