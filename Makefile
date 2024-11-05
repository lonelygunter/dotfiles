TARGETS = .bashrc .config .emacs .emacs.d

all: $(TARGETS)

$(TARGETS):
	@if [ -f ~/$@ ]; then \
		cp ~/$@ $@; \
	else \
		cp -r ~/$@ $@; \
	fi \

clean: $(TARGETS)
	rm -rif $^
