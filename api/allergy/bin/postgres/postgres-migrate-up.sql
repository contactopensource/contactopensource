CREATE TABLE allergy (
);

CREATE INDEX allergy_id_index on allergy(id);
CREATE INDEX allergy_created_at_index on allergy(created_at);
CREATE INDEX allergy_created_by_index on allergy(created_by);
CREATE INDEX allergy_updated_at_index on allergy(updated_at);
CREATE INDEX allergy_updated_by_index on allergy(updated_by);
CREATE INDEX allergy_retired_at_index on allergy(retired_at);
CREATE INDEX allergy_retired_by_index on allergy(retired_by);
CREATE INDEX allergy_locale_code_index on allergy(locale_code);
CREATE INDEX allergy_tagging_index on allergy(tagging);

