CREATE TABLE content_message (
);

CREATE INDEX content_message_id_index on content_message(id);
CREATE INDEX content_message_created_at_index on content_message(created_at);
CREATE INDEX content_message_created_by_index on content_message(created_by);
CREATE INDEX content_message_updated_at_index on content_message(updated_at);
CREATE INDEX content_message_updated_by_index on content_message(updated_by);
CREATE INDEX content_message_retired_at_index on content_message(retired_at);
CREATE INDEX content_message_retired_by_index on content_message(retired_by);
CREATE INDEX content_message_locale_code_index on content_message(locale_code);
CREATE INDEX content_message_tagging_index on content_message(tagging);
CREATE INDEX content_message_name_index on content_message(name);
CREATE INDEX content_message_subname_index on content_message(subname);
CREATE INDEX content_message_sign_index on content_message(sign);
CREATE INDEX content_message_kind_index on content_message(kind);

