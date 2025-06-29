# Makefile for the Contact Open Source API folder.
#
# Each API subdirectory contains an `api.yml` file that defines the API.
# This Makefile generates various outputs based on the `api.yml` file.
# This requires the tool `bin/parse-api-yml` which generates the outputs.
#
# The goal is these files:
#
# ```
# api.yml
# index.md
# bin/django-model.py
# bin/loco-generate-scaffold-html.sh
# bin/phoenix-generate.sh
# bin/postgres-migrate-down.sql
# bin/postgres-migrate-up.sql
# bin/rails-generate-scaffold.sh
# uml/uml.plantuml
# uml/uml.png
# ```

makefile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
makefile_dir := $(dir $(makefile_path))

dirs := $(dir $(wildcard */api.yml))

all: \
	$(dirs:%=%index.md) \
	$(dirs:%=%bin) \
	$(dirs:%=%bin/django-model.py) \
	$(dirs:%=%bin/loco-generate-scaffold-html.sh) \
	$(dirs:%=%bin/phoenix-generate.sh) \
	$(dirs:%=%bin/postgres-migrate-down.sql) \
	$(dirs:%=%bin/postgres-migrate-up.sql) \
	$(dirs:%=%bin/rails-generate-scaffold.sh) \
	$(dirs:%=%uml) \
	$(dirs:%=%uml/uml.plantuml) \
	$(dirs:%=%uml/uml.png)
	
.PHONY: clean
clean:
	@rm -f */index.md
	@rm -f */bin/django-model.py
	@rm -f */bin/loco-generate-scaffold-html.sh
	@rm -f */bin/phoenix-generate.sh
	@rm -f */bin/postgres-migrate-down.sql
	@rm -f */bin/postgres-migrate-up.sql
	@rm -f */bin/rails-generate-scaffold.sh
	@rm -f */uml/uml.plantuml
	@rm -f */uml/uml.png

%/bin:
	@echo $@
	mkdir -p $@

%/uml:
	@echo $@
	mkdir -p $@

%/index.md: %/api.yml | %/bin %/uml
	@echo $@
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(*)/api.yml

%/bin/django-model.py: %/api.yml | %/bin %/uml
	@echo $@
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(*)/api.yml

%/bin/loco-generate-scaffold-html.sh: %/api.yml | %/bin %/uml
	@echo $@
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(*)/api.yml

%/bin/phoenix-generate.sh: %/api.yml | %/bin %/uml
	@echo $@
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(*)/api.yml

%/bin/postgres-migrate-down.sql: %/api.yml | %/bin %/uml
	@echo $@
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(*)/api.yml

%/bin/postgres-migrate-up.sql: %/api.yml | %/bin %/uml
	@echo $@
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(*)/api.yml

%/bin/rails-generate-scaffold.sh: %/api.yml | %/bin %/uml
	@echo $@
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(*)/api.yml

%/uml/uml.plantuml: %/api.yml | %/bin %/uml
	@echo $@
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(*)/api.yml

%/uml/uml.png: %/uml/uml.plantuml | %/bin %/uml
	@echo $@
	mkdir -p uml
	plantuml $(*)/uml/uml.plantuml
