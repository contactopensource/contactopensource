CREATE TABLE medication_request (
);

CREATE INDEX medication_request_id_index on medication_request(id);
CREATE INDEX medication_request_created_at_index on medication_request(created_at);
CREATE INDEX medication_request_created_by_index on medication_request(created_by);
CREATE INDEX medication_request_updated_at_index on medication_request(updated_at);
CREATE INDEX medication_request_updated_by_index on medication_request(updated_by);
CREATE INDEX medication_request_retired_at_index on medication_request(retired_at);
CREATE INDEX medication_request_retired_by_index on medication_request(retired_by);
CREATE INDEX medication_request_locale_code_index on medication_request(locale_code);
CREATE INDEX medication_request_tagging_index on medication_request(tagging);

