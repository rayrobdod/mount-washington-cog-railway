FILENAME	:= mtwashingtoncog

NMLC	:= .venv/bin/nmlc

BUILD	:= build

DEPS	:= $(BUILD)/$(FILENAME).dep
LANGS	:= $(wildcard lang/*.lng)

all: $(BUILD)/$(FILENAME).grf

clean:
	rm -r $(BUILD)

install: $(BUILD)/$(FILENAME).grf
	cp $(BUILD)/$(FILENAME).grf ~/.local/share/openttd/newgrf/$(FILENAME).grf

$(BUILD)/$(FILENAME).dep: cog.nml
	@mkdir -p $(@D)
	$(NMLC) -M --MF=$@ --MT=$(BUILD)/$(FILENAME).grf $<

$(BUILD)/$(FILENAME).grf: cog.nml $(LANGS)
	@mkdir -p $(@D)
	$(NMLC) --grf=$@ $<

-include $(DEPS)
-include user.mk
