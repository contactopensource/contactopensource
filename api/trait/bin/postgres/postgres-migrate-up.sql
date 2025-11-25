CREATE TABLE trait (
);

CREATE INDEX trait_id_index on trait(id);
CREATE INDEX trait_created_at_index on trait(created_at);
CREATE INDEX trait_created_by_index on trait(created_by);
CREATE INDEX trait_updated_at_index on trait(updated_at);
CREATE INDEX trait_updated_by_index on trait(updated_by);
CREATE INDEX trait_retired_at_index on trait(retired_at);
CREATE INDEX trait_retired_by_index on trait(retired_by);
CREATE INDEX trait_locale_code_index on trait(locale_code);
CREATE INDEX trait_tagging_index on trait(tagging);
CREATE INDEX trait_name_index on trait(name);
CREATE INDEX trait_subname_index on trait(subname);
CREATE INDEX trait_slug_index on trait(slug);
CREATE INDEX trait_sign_index on trait(sign);
CREATE INDEX trait_kind_index on trait(kind);

