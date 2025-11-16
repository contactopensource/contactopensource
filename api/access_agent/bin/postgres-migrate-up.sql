CREATE TABLE access_agent (
);

CREATE INDEX access_agent_id_index on access_agent(id);
CREATE INDEX access_agent_created_at_index on access_agent(created_at);
CREATE INDEX access_agent_created_by_index on access_agent(created_by);
CREATE INDEX access_agent_updated_at_index on access_agent(updated_at);
CREATE INDEX access_agent_updated_by_index on access_agent(updated_by);
CREATE INDEX access_agent_retired_at_index on access_agent(retired_at);
CREATE INDEX access_agent_retired_by_index on access_agent(retired_by);
CREATE INDEX access_agent_locale_code_index on access_agent(locale_code);
CREATE INDEX access_agent_tagging_index on access_agent(tagging);
CREATE INDEX access_agent_name_index on access_agent(name);
CREATE INDEX access_agent_subname_index on access_agent(subname);
CREATE INDEX access_agent_slug_index on access_agent(slug);
CREATE INDEX access_agent_sign_index on access_agent(sign);
CREATE INDEX access_agent_kind_index on access_agent(kind);
CREATE INDEX access_agent_key_index on access_agent(key);

