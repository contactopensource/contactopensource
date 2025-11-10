CREATE TABLE place_review (
  --- meta
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  updated_at TIMESTAMP(6) WITH TIME ZONE DEFAULT (now() AT TIME ZONE 'utc'),
  retired_at TIMESTAMP(6) WITH TIME ZONE,
  locale_code text,
  parent_id uuid CONSTRAINT place_review_parent_id_fk REFERENCES place_review (id),
  parent_order int CONSTRAINT place_review_parent_order_check CHECK (parent_order >= 0),
  --- card
  name text,
  sign text CONSTRAINT place_review_sign_check CHECK (LENGTH(sign) = 1),
  status text,
  tagging text,
  note text,
  -- link
  by_user_id uuid CONSTRAINT place_review_by_user_id_fk REFERENCES users (id),
  to_place_id uuid CONSTRAINT place_review_to_place_id_fk REFERENCES place (id),
  -- review
  strength text,
  start text,
  stop text,
  continue text,
  change text,
  advice text
);

CREATE TRIGGER trigger_place_review_updated_at
  BEFORE UPDATE ON place_review
  FOR EACH ROW EXECUTE FUNCTION
  trigger_updated_at();

CREATE INDEX place_review_index_gto
  ON place_review
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

CREATE INDEX place_review_created_at_index ON place_review (created_at);
CREATE INDEX place_review_updated_at_index ON place_review (updated_at);
CREATE INDEX place_review_retired_at_index ON place_review (retired_at);
CREATE INDEX place_review_locale_code_index ON place_review (locale_code);
CREATE INDEX place_review_name_index ON place_review (name);
CREATE INDEX place_review_name_index_tpo ON place_review (name text_pattern_ops);
CREATE INDEX place_review_tagging_index ON place_review (tagging);
CREATE INDEX place_review_tagging_index_tpo ON place_review (tagging text_pattern_ops);
