CREATE TABLE node (
);

CREATE INDEX node_id_index on node(id);
CREATE INDEX node_created_at_index on node(created_at);
CREATE INDEX node_created_by_index on node(created_by);
CREATE INDEX node_updated_at_index on node(updated_at);
CREATE INDEX node_updated_by_index on node(updated_by);
CREATE INDEX node_retired_at_index on node(retired_at);
CREATE INDEX node_retired_by_index on node(retired_by);
CREATE INDEX node_locale_code_index on node(locale_code);
CREATE INDEX node_tagging_index on node(tagging);
CREATE INDEX node_name_index on node(name);
CREATE INDEX node_subname_index on node(subname);
CREATE INDEX node_slug_index on node(slug);
CREATE INDEX node_sign_index on node(sign);
CREATE INDEX node_kind_index on node(kind);

