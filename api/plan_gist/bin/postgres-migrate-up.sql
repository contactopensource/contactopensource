CREATE TABLE plan_gist (
);

CREATE INDEX index_plan_gist_id on plan_gist(id);
CREATE INDEX index_plan_gist_zid on plan_gist(zid);
CREATE INDEX index_plan_gist_title on plan_gist(title);
CREATE INDEX index_plan_gist_subtitle on plan_gist(subtitle);

