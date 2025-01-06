"""
Render an attribute index using PostgreSQL syntax.

The output should look like this:

```sql
ALTER TABLE "polls_choice"
  ADD CONSTRAINT "polls_choice_question_id_c5b4b260_fk_polls_question_id"
    FOREIGN KEY ("question_id")
    REFERENCES "polls_question" ("id")
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX "polls_choice_question_id_c5b4b260" ON "polls_choice" ("question_id");
```
"""

def render(attribute):
    return f"""
ALTER TABLE "{attribute.table_name}"
  ADD CONSTRAINT "index_{attribute.id}_fk_{attribute.references_table_id}"
    FOREIGN KEY ("question_id")
    REFERENCES "{attribute.references_table_id}" ("{attribute.references_attribute_id}")
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX "index_{entity.id}_{attribute.id}_{attribute.fk_id}" ON "{entity.table_id}" ("question_id");
"""


