CREATE TABLE content_image (
);

CREATE INDEX content_image_id_index on content_image(id);
CREATE INDEX content_image_created_at_index on content_image(created_at);
CREATE INDEX content_image_created_by_index on content_image(created_by);
CREATE INDEX content_image_updated_at_index on content_image(updated_at);
CREATE INDEX content_image_updated_by_index on content_image(updated_by);
CREATE INDEX content_image_retired_at_index on content_image(retired_at);
CREATE INDEX content_image_retired_by_index on content_image(retired_by);
CREATE INDEX content_image_locale_code_index on content_image(locale_code);
CREATE INDEX content_image_tagging_index on content_image(tagging);
CREATE INDEX content_image_name_index on content_image(name);
CREATE INDEX content_image_subname_index on content_image(subname);
CREATE INDEX content_image_sign_index on content_image(sign);
CREATE INDEX content_image_kind_index on content_image(kind);

