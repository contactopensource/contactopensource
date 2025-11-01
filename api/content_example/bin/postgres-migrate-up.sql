CREATE TABLE content_example (
);

CREATE INDEX index_content_example_id on content_example(id);
CREATE INDEX index_content_example_created_at on content_example(created_at);
CREATE INDEX index_content_example_created_by on content_example(created_by);
CREATE INDEX index_content_example_updated_at on content_example(updated_at);
CREATE INDEX index_content_example_updated_by on content_example(updated_by);
CREATE INDEX index_content_example_retired_at on content_example(retired_at);
CREATE INDEX index_content_example_retired_by on content_example(retired_by);
CREATE INDEX index_content_example_locale_code on content_example(locale_code);
CREATE INDEX index_content_example_tagging on content_example(tagging);
CREATE INDEX index_content_example_name on content_example(name);
CREATE INDEX index_content_example_subname on content_example(subname);
CREATE INDEX index_content_example_sign on content_example(sign);
CREATE INDEX index_content_example_kind on content_example(kind);

