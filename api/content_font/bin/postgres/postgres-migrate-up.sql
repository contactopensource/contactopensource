CREATE TABLE content_font (
);

CREATE INDEX content_font_id_index on content_font(id);
CREATE INDEX content_font_created_at_index on content_font(created_at);
CREATE INDEX content_font_created_by_index on content_font(created_by);
CREATE INDEX content_font_updated_at_index on content_font(updated_at);
CREATE INDEX content_font_updated_by_index on content_font(updated_by);
CREATE INDEX content_font_retired_at_index on content_font(retired_at);
CREATE INDEX content_font_retired_by_index on content_font(retired_by);
CREATE INDEX content_font_locale_code_index on content_font(locale_code);
CREATE INDEX content_font_tagging_index on content_font(tagging);
CREATE INDEX content_font_name_index on content_font(name);
CREATE INDEX content_font_subname_index on content_font(subname);
CREATE INDEX content_font_slug_index on content_font(slug);
CREATE INDEX content_font_sign_index on content_font(sign);
CREATE INDEX content_font_kind_index on content_font(kind);

