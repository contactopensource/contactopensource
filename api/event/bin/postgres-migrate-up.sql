CREATE TABLE event (
);

CREATE INDEX index_event_id on event(id);
CREATE INDEX index_event_sign on event(sign);
CREATE INDEX index_event_created_at on event(created_at);
CREATE INDEX index_event_created_by on event(created_by);
CREATE INDEX index_event_updated_at on event(updated_at);
CREATE INDEX index_event_updated_by on event(updated_by);
CREATE INDEX index_event_deleted_at on event(deleted_at);
CREATE INDEX index_event_deleted_by on event(deleted_by);
CREATE INDEX index_event_locale_id on event(locale_id);
CREATE INDEX index_event_title on event(title);
CREATE INDEX index_event_subtitle on event(subtitle);

