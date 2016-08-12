
PROJECTS ?= $(shell find Chapter-1 Chapter-2 -name Makefile)

%.ph_build :
	+@$(MAKE) -C $(dir $*) $(MAKECMDGOALS)

%.ph_clean : 
	+@$(MAKE) -C $(dir $*) clean $(USE_DEVICE)

default: all

all:  $(addsuffix .ph_build,$(PROJECTS))
	@echo "Finished building samples"

tidy:
	@find * | egrep "#" | xargs rm -f
	@find * | egrep "\~" | xargs rm -f

clean: tidy $(addsuffix .ph_clean,$(PROJECTS))

