SOURCES := $(shell find . -name '*.fnl')
OBJECTS := $(patsubst %.fnl, lua/%.lua, $(SOURCES))

.PHONY: all clean

all: $(OBJECTS) 

clean:
	rm -rf lua

lua/%.lua: %.fnl
	mkdir -p $(dir $@)
	fennel --compile $< > $@
