CREATE TABLE access_agent (
);

CREATE INDEX index_access_agent_id on access_agent(id);
CREATE INDEX index_access_agent_sign on access_agent(sign);
CREATE INDEX index_access_agent_created_at on access_agent(created_at);
CREATE INDEX index_access_agent_created_by on access_agent(created_by);
CREATE INDEX index_access_agent_updated_at on access_agent(updated_at);
CREATE INDEX index_access_agent_updated_by on access_agent(updated_by);
CREATE INDEX index_access_agent_deleted_at on access_agent(deleted_at);
CREATE INDEX index_access_agent_deleted_by on access_agent(deleted_by);
CREATE INDEX index_access_agent_locale_code on access_agent(locale_code);
CREATE INDEX index_access_agent_sign on access_agent(sign);
CREATE INDEX index_access_agent_kind on access_agent(kind);
CREATE INDEX index_access_agent_title on access_agent(title);
CREATE INDEX index_access_agent_subtitle on access_agent(subtitle);
CREATE INDEX index_access_agent_key on access_agent(key);

