CREATE TABLE medication_stem (
);

CREATE INDEX medication_stem_id_index on medication_stem(id);
CREATE INDEX medication_stem_created_at_index on medication_stem(created_at);
CREATE INDEX medication_stem_created_by_index on medication_stem(created_by);
CREATE INDEX medication_stem_updated_at_index on medication_stem(updated_at);
CREATE INDEX medication_stem_updated_by_index on medication_stem(updated_by);
CREATE INDEX medication_stem_retired_at_index on medication_stem(retired_at);
CREATE INDEX medication_stem_retired_by_index on medication_stem(retired_by);
CREATE INDEX medication_stem_locale_code_index on medication_stem(locale_code);
CREATE INDEX medication_stem_tagging_index on medication_stem(tagging);

