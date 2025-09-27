CREATE TABLE pantone_process_color (
);

CREATE INDEX index_pantone_process_color_id on pantone_process_color(id);
CREATE INDEX index_pantone_process_color_sign on pantone_process_color(sign);
CREATE INDEX index_pantone_process_color_created_at on pantone_process_color(created_at);
CREATE INDEX index_pantone_process_color_created_by on pantone_process_color(created_by);
CREATE INDEX index_pantone_process_color_updated_at on pantone_process_color(updated_at);
CREATE INDEX index_pantone_process_color_updated_by on pantone_process_color(updated_by);
CREATE INDEX index_pantone_process_color_deleted_at on pantone_process_color(deleted_at);
CREATE INDEX index_pantone_process_color_deleted_by on pantone_process_color(deleted_by);
CREATE INDEX index_pantone_process_color_locale_code on pantone_process_color(locale_code);
CREATE INDEX index_pantone_process_color_key on pantone_process_color(key);
CREATE INDEX index_pantone_process_color_name on pantone_process_color(name);
CREATE INDEX index_pantone_process_color_code on pantone_process_color(code);
CREATE INDEX index_pantone_process_color_stock on pantone_process_color(stock);

