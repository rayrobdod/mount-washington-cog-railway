NMLC	:= .venv/bin/nmlc

BUILD	:= build

DEPS	:= $(BUILD)/cog.dep
LANGS	:= $(wildcard lang/*.lng)

all: $(BUILD)/cog.grf

clean:
	rm $(BUILD)/cog.grf $(DEPS)

install: $(BUILD)/cog.grf
	cp $(BUILD)/cog.grf ~/.local/share/openttd/newgrf/cog.grf

$(BUILD)/cog.dep: cog.nml
	@mkdir -p $(@D)
	$(NMLC) -M --MF=$@ --MT=$(BUILD)/cog.grf $<

$(BUILD)/cog.grf: cog.nml $(LANGS)
	@mkdir -p $(@D)
	$(NMLC) --grf=$@ $<

-include $(DEPS)
-include user.mk
