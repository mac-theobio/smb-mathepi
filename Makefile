
Sources = Makefile README.md makestuff.mk LICENSE.md
Ignore += .gitignore
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

## ballot.html: ballot.md
Sources += ballot.md
Ignore += ballot.html

include makestuff.mk
-include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/pandoc.mk
