makefile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
makefile_dir := $(dir $(makefile_path))

all: */api.md */uml/uml.plantuml */uml/uml.png

.PHONY: clean
clean:
	@rm -f */index.md
	@rm -f */bin/loco-generate-scaffold.html.sh
	@rm -f */bin/phoenix-generate.sh
	@rm -f */bin/postgres-migrate-down.sh
	@rm -f */bin/postgres-migrate-up.sh
	@rm -f */bin/rails-generate-scaffold.sh
	@rm -f */uml/uml.plantuml
	@rm -f */uml/uml.png

*/api.md:
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(@D)/api.yml

*/uml/uml.plantuml:
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(@D)/api.yml

*/uml/uml.png: */uml/uml.plantuml
	plantuml $(@D)/uml.plantuml
