CREATE TABLE node (
);

CREATE INDEX index_node_id on node(id);
CREATE INDEX index_node_sign on node(sign);
CREATE INDEX index_node_created_at on node(created_at);
CREATE INDEX index_node_created_by on node(created_by);
CREATE INDEX index_node_updated_at on node(updated_at);
CREATE INDEX index_node_updated_by on node(updated_by);
CREATE INDEX index_node_deleted_at on node(deleted_at);
CREATE INDEX index_node_deleted_by on node(deleted_by);
CREATE INDEX index_node_locale_id on node(locale_id);
CREATE INDEX index_node_title on node(title);
CREATE INDEX index_node_subtitle on node(subtitle);

