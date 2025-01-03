top = $(shell git rev-parse --show-toplevel)

# Register all subdirectories in the project's root directory.
SUBDIRS := $(wildcard */.)

# Recurse `make` into each subdirectory.
$(SUBDIRS): FORCE
	$(MAKE) -C $@

# Make will always run this and any other target that depends on it.
FORCE:
