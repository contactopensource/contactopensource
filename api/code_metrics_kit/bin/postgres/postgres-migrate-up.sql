CREATE TABLE code_metrics_kit (
);

CREATE INDEX code_metrics_kit_id_index on code_metrics_kit(id);
CREATE INDEX code_metrics_kit_created_at_index on code_metrics_kit(created_at);
CREATE INDEX code_metrics_kit_created_by_index on code_metrics_kit(created_by);
CREATE INDEX code_metrics_kit_updated_at_index on code_metrics_kit(updated_at);
CREATE INDEX code_metrics_kit_updated_by_index on code_metrics_kit(updated_by);
CREATE INDEX code_metrics_kit_retired_at_index on code_metrics_kit(retired_at);
CREATE INDEX code_metrics_kit_retired_by_index on code_metrics_kit(retired_by);
CREATE INDEX code_metrics_kit_locale_code_index on code_metrics_kit(locale_code);
CREATE INDEX code_metrics_kit_tagging_index on code_metrics_kit(tagging);

