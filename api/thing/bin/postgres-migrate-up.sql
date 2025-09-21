CREATE TABLE thing (
);

CREATE INDEX index_thing_id on thing(id);
CREATE INDEX index_thing_sign on thing(sign);
CREATE INDEX index_thing_created_at on thing(created_at);
CREATE INDEX index_thing_created_by on thing(created_by);
CREATE INDEX index_thing_updated_at on thing(updated_at);
CREATE INDEX index_thing_updated_by on thing(updated_by);
CREATE INDEX index_thing_deleted_at on thing(deleted_at);
CREATE INDEX index_thing_deleted_by on thing(deleted_by);
CREATE INDEX index_thing_locale_id on thing(locale_id);
CREATE INDEX index_thing_title on thing(title);
CREATE INDEX index_thing_subtitle on thing(subtitle);

