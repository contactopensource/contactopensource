CREATE TABLE edge (
);

CREATE INDEX edge_id_index on edge(id);
CREATE INDEX edge_created_at_index on edge(created_at);
CREATE INDEX edge_created_by_index on edge(created_by);
CREATE INDEX edge_updated_at_index on edge(updated_at);
CREATE INDEX edge_updated_by_index on edge(updated_by);
CREATE INDEX edge_retired_at_index on edge(retired_at);
CREATE INDEX edge_retired_by_index on edge(retired_by);
CREATE INDEX edge_locale_code_index on edge(locale_code);
CREATE INDEX edge_tagging_index on edge(tagging);
CREATE INDEX edge_name_index on edge(name);
CREATE INDEX edge_subname_index on edge(subname);
CREATE INDEX edge_slug_index on edge(slug);
CREATE INDEX edge_sign_index on edge(sign);
CREATE INDEX edge_kind_index on edge(kind);

