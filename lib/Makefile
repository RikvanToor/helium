
COREASM=coreasm
HELIUM=helium

.PHONY : all
.SUFFIXES : .core .lvm .o

CORESRC = LvmLang.core LvmIO.core LvmException.core \
          HeliumLang.core PreludePrim.core

HELIUMSRC = Prelude.hs List.hs Maybe.hs Char.hs

LIBRARIES = $(patsubst %.core,%.lvm,$(CORESRC)) \
            $(patsubst %.hs,%.o,$(HELIUMSRC))

all : $(LIBRARIES)
	echo $(LIBRARIES)

%.lvm : %.core
	$(COREASM) $<

%.o : %.hs
	"$(HELIUM)" -b --overloading $<

