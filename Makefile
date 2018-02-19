
Sources = Makefile .gitignore .ignore README.md makestuff.mk LICENSE.md
-include target.mk

# -include $(ms)/perl.def

##################################################################

## Content

Sources += materials/*

clonedirs += private

private:
	git clone https://dushoff@bitbucket.org/dushoff/smb-mathepi.git $@

Ignore += $(clonedirs)

######################################################################

include makestuff.mk
-include $(ms)/git.mk
-include $(ms)/visual.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/texdeps.mk
