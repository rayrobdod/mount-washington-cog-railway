FILENAME	:= mtwashingtoncog

NMLC	:= .venv/bin/nmlc

BUILD	:= build

DEPS	:= $(BUILD)/$(FILENAME).dep
LANGS	:= $(wildcard lang/*.lng)

all: $(BUILD)/$(FILENAME).tar

clean:
	rm -r $(BUILD)

install: $(BUILD)/$(FILENAME).tar
	cp $(BUILD)/$(FILENAME).tar ~/.local/share/openttd/newgrf/$(FILENAME).tar

$(BUILD)/$(FILENAME).dep: cog.nml
	@mkdir -p $(@D)
	$(NMLC) -M --MF=$@ --MT=$(BUILD)/$(FILENAME).grf $<

$(BUILD)/$(FILENAME).grf: cog.nml $(LANGS)
	@mkdir -p $(@D)
	$(NMLC) --grf=$@ $<

$(BUILD)/$(FILENAME).tar: $(BUILD)/$(FILENAME).grf
	tar --create --file=$@ \
		--transform=s~^$(BUILD)/~~ \
		$(BUILD)/$(FILENAME).grf

-include $(DEPS)
-include user.mk
