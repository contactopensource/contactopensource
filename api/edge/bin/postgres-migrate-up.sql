CREATE TABLE edge (
);

CREATE INDEX index_edge_id on edge(id);
CREATE INDEX index_edge_created_at on edge(created_at);
CREATE INDEX index_edge_created_by on edge(created_by);
CREATE INDEX index_edge_updated_at on edge(updated_at);
CREATE INDEX index_edge_updated_by on edge(updated_by);
CREATE INDEX index_edge_deleted_at on edge(deleted_at);
CREATE INDEX index_edge_deleted_by on edge(deleted_by);
CREATE INDEX index_edge_locale_code on edge(locale_code);
CREATE INDEX index_edge_tagging on edge(tagging);
CREATE INDEX index_edge_name on edge(name);
CREATE INDEX index_edge_subname on edge(subname);
CREATE INDEX index_edge_sign on edge(sign);
CREATE INDEX index_edge_kind on edge(kind);

