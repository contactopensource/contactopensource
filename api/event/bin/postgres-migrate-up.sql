CREATE TABLE event (
);

CREATE INDEX event_id_index on event(id);
CREATE INDEX event_created_at_index on event(created_at);
CREATE INDEX event_created_by_index on event(created_by);
CREATE INDEX event_updated_at_index on event(updated_at);
CREATE INDEX event_updated_by_index on event(updated_by);
CREATE INDEX event_retired_at_index on event(retired_at);
CREATE INDEX event_retired_by_index on event(retired_by);
CREATE INDEX event_locale_code_index on event(locale_code);
CREATE INDEX event_tagging_index on event(tagging);
CREATE INDEX event_name_index on event(name);
CREATE INDEX event_subname_index on event(subname);
CREATE INDEX event_sign_index on event(sign);
CREATE INDEX event_kind_index on event(kind);

