CREATE TABLE node (
);

CREATE INDEX index_node_id on node(id);
CREATE INDEX index_node_created_at on node(created_at);
CREATE INDEX index_node_created_by on node(created_by);
CREATE INDEX index_node_updated_at on node(updated_at);
CREATE INDEX index_node_updated_by on node(updated_by);
CREATE INDEX index_node_retired_at on node(retired_at);
CREATE INDEX index_node_retired_by on node(retired_by);
CREATE INDEX index_node_locale_code on node(locale_code);
CREATE INDEX index_node_tagging on node(tagging);
CREATE INDEX index_node_name on node(name);
CREATE INDEX index_node_subname on node(subname);
CREATE INDEX index_node_sign on node(sign);
CREATE INDEX index_node_kind on node(kind);

