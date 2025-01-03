makefile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
makefile_dir := $(dir $(makefile_path))

all: */index.md */bin/loco-generate-scaffold-html.sh */bin/phoenix-generate.sh */bin/postgres-migrate-down.sql */bin/postgres-migrate-up.sql */bin/rails-generate-scaffold.sh */uml/uml.plantuml */uml/uml.png

.PHONY: clean
clean:
	@rm -f */index.md
	@rm -f */bin/loco-generate-scaffold-html.sh
	@rm -f */bin/phoenix-generate.sh
	@rm -f */bin/postgres-migrate-down.sql
	@rm -f */bin/postgres-migrate-up.sql
	@rm -f */bin/rails-generate-scaffold.sh
	@rm -f */uml/uml.plantuml
	@rm -f */uml/uml.png

%/index.md:
	@echo $@
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(*)/api.yml

%/bin/loco-generate-scaffold-html.sh:
	@echo $@
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(*)/api.yml

%/bin/phoenix-generate.sh:
	@echo $@
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(*)/api.yml

%/bin/postgres-migrate-down.sql:
	@echo $@
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(*)/api.yml

%/bin/postgres-migrate-up.sql:
	@echo $@
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(*)/api.yml

%/bin/rails-generate-scaffold.sh:
	@echo $@
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(*)/api.yml

%/uml/uml.plantuml:
	@echo $@
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(*)/api.yml

%/uml/uml.png: %/uml/uml.plantuml
	@echo $@
	plantuml $(@D)/uml.plantuml
