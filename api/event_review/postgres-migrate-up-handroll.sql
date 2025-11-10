CREATE TABLE event_review (
  --- meta
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  updated_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  retired_at TIMESTAMP(6) WITH TIME ZONE,
  locale_code text,
  parent_id uuid CONSTRAINT event_review_parent_id_fk REFERENCES event_review (id),
  parent_order int CONSTRAINT event_review_parent_order_check CHECK (parent_order >= 0),
  --- card
  name text,
  sign text CONSTRAINT event_review_sign_check CHECK (LENGTH(sign) = 1),
  status text,
  tagging text,
  note text,
  -- link
  by_user_id uuid CONSTRAINT event_review_by_user_id_fk REFERENCES users (id),
  to_event_id uuid CONSTRAINT event_review_to_event_id_fk REFERENCES event (id),
  -- review
  strength text,
  start text,
  stop text,
  continue text,
  change text,
  advice text
);

CREATE TRIGGER trigger_event_review_updated_at
  BEFORE UPDATE ON event_review
  FOR EACH ROW EXECUTE FUNCTION
  trigger_updated_at();

CREATE INDEX event_review_index_gto
  ON event_review
  USING GIN ((
    sign
      || ' ' ||
    name
      || ' ' ||
    status
      || ' ' ||
    tagging
      || ' ' ||
    note
      || ' ' ||
    strength
      || ' ' ||
    start
      || ' ' ||
    stop
      || ' ' ||
    continue
      || ' ' ||
    change
      || ' ' ||
    advice
  ) gin_trgm_ops);

CREATE INDEX event_review_created_at_index ON event_review (created_at);
CREATE INDEX event_review_updated_at_index ON event_review (updated_at);
CREATE INDEX event_review_retired_at_index ON event_review (retired_at);
CREATE INDEX event_review_locale_code_index ON event_review (locale_code);
CREATE INDEX event_review_name_index ON event_review (name);
CREATE INDEX event_review_name_index_tpo ON event_review (name text_pattern_ops);
CREATE INDEX event_review_tagging_index ON event_review (tagging);
CREATE INDEX event_review_tagging_index_tpo ON event_review (tagging text_pattern_ops);
