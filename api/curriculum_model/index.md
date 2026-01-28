# curriculum_model

Curriculum model


## Attributes

meta:

  * id: uuid (index)

  * lock_version: integer

  * created_at: timestamp_utc_usec (index)

  * created_by: url (index)

  * updated_at: timestamp_utc_usec (index)

  * updated_by: url (index)

  * retired_at: timestamp_utc_usec (index)

  * retired_by: url (index)

  * locale_code: string (index) - example: the locale code "en-US" means "English - United States".

  * tagging: string (index) - example: The tagging "red green blue" means a list of three tags ["red", "green", "blue"]

card:

  * name: string(50) (index) - example: Alice Anderson

  * subname: string(50) (index) - example: @alice

  * slug: string(72) (index) - example: alice-anderson

  * summary: string(72)

  * description: text

  * disambiguation: text

  * sign: text(1) (index) - example: a green check mark emoji to indicate that this instance is complete.

  * kind: string (index) - example: a "Pet" resource can be a kind of "Dog", "Cat", "Bird", etc.

  * star_count: integer - example: 5 for the best rating

  * quick_response_code_id: quick_response_code.id - example: A quick-response code that is a URL that leads to this card.

  * universal_product_code_id: universal_product_code.id - example: A universal product code that is an id that leads to this card.

Main:

  * year: year - example: 2026

  * philosophy_sentence: text - example: - Teachers, being closest to learners, should design curriculum rather than administrators.
- Curriculum is never "finished"—continuous refinement based on evaluation feedback.
- All elements are interconnected; change in one affects all others.
- Curriculum exists at multiple levels; what is intended often differs from what is experienced.
- Start with the end in mind; assessment drives instruction.

  * best_use_case_summary: text - example: ['Standardized testing environments, accountability systems', 'Diverse classrooms, localized curriculum needs', 'Evolving disciplines, pilot programs', 'Comprehensive curriculum reform', 'Philosophical alignment, policy analysis', 'Mathematics, sciences, languages', 'Interdisciplinary units, competency-based education']

  * focus_summary: text - example: - Measurable objectives and outcomes
- Learner needs and teacher expertise
- Continuous improvement
- Balance among curriculum elements
- Values and lived curriculum
- Cognitive development and retention
- Deep understanding and transfer

  * approach_summary: text - example: - Product-oriented
- Process-oriented
- Systems-oriented
- Outcome-oriented
- Phenomenological
- Constructivist

  * direction_summary: text - example: - Top-down, linear
- Bottom-up, inductive
- Cyclical, iterative
- Interconnected domains
- Multi-level analysis
- Iterative deepening
- Backward from goals

  * teacher_role_summary: text - example: - Implementer of prescribed curriculum
- Primary curriculum designer
- Evaluator and reviser
- Balancer of curriculum elements
- Interpreter and mediator
- Scaffolder of increasing complexity
- Designer of understanding-focused units

  * structure_description_as_markdown: markdown

  * strengths_description_as_markdown: markdown

  * limitations_description_as_markdown: markdown

