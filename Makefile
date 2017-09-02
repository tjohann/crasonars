# only for cleaning

MODULES = $(shell ls -d */ | cut -f1 -d'/')

.PHONY: all
all:
	for dir in $(MODULES); do (cd $$dir && $(MAKE)); done

.PHONY: clean
clean:
	rm -f *~
	for dir in $(MODULES); do (cd $$dir && $(MAKE) $@); done

distclean: clean
