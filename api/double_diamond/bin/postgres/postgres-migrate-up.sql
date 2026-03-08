CREATE TABLE double_diamond (
);

CREATE INDEX double_diamond_id_index on double_diamond(id);
CREATE INDEX double_diamond_created_at_index on double_diamond(created_at);
CREATE INDEX double_diamond_created_by_index on double_diamond(created_by);
CREATE INDEX double_diamond_updated_at_index on double_diamond(updated_at);
CREATE INDEX double_diamond_updated_by_index on double_diamond(updated_by);
CREATE INDEX double_diamond_retired_at_index on double_diamond(retired_at);
CREATE INDEX double_diamond_retired_by_index on double_diamond(retired_by);
CREATE INDEX double_diamond_locale_code_index on double_diamond(locale_code);
CREATE INDEX double_diamond_tagging_index on double_diamond(tagging);

