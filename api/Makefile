makefile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
makefile_dir := $(dir $(makefile_path))

all: */api.md */uml.plantuml */uml.png

.PHONY: clean
clean:
	@rm -f */api.md
	@rm -f */uml.plantuml
	@rm -f */uml.png

*/api.md:
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(@D)/api.yml

*/uml.plantuml:
	../bin/parse-api-yml/parse-api-yml-to-outputs -w $(makefile_dir)$(@D)/api.yml

*/uml.png: */uml.plantuml
	plantuml $(@D)/uml.plantuml
