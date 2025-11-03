CREATE TABLE content_example (
);

CREATE INDEX content_example_id_index on content_example(id);
CREATE INDEX content_example_created_at_index on content_example(created_at);
CREATE INDEX content_example_created_by_index on content_example(created_by);
CREATE INDEX content_example_updated_at_index on content_example(updated_at);
CREATE INDEX content_example_updated_by_index on content_example(updated_by);
CREATE INDEX content_example_retired_at_index on content_example(retired_at);
CREATE INDEX content_example_retired_by_index on content_example(retired_by);
CREATE INDEX content_example_locale_code_index on content_example(locale_code);
CREATE INDEX content_example_tagging_index on content_example(tagging);
CREATE INDEX content_example_name_index on content_example(name);
CREATE INDEX content_example_subname_index on content_example(subname);
CREATE INDEX content_example_sign_index on content_example(sign);
CREATE INDEX content_example_kind_index on content_example(kind);

