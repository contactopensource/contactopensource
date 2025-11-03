CREATE TABLE content_application (
);

CREATE INDEX content_application_id_index on content_application(id);
CREATE INDEX content_application_created_at_index on content_application(created_at);
CREATE INDEX content_application_created_by_index on content_application(created_by);
CREATE INDEX content_application_updated_at_index on content_application(updated_at);
CREATE INDEX content_application_updated_by_index on content_application(updated_by);
CREATE INDEX content_application_retired_at_index on content_application(retired_at);
CREATE INDEX content_application_retired_by_index on content_application(retired_by);
CREATE INDEX content_application_locale_code_index on content_application(locale_code);
CREATE INDEX content_application_tagging_index on content_application(tagging);
CREATE INDEX content_application_name_index on content_application(name);
CREATE INDEX content_application_subname_index on content_application(subname);
CREATE INDEX content_application_sign_index on content_application(sign);
CREATE INDEX content_application_kind_index on content_application(kind);

