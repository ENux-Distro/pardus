PREFIX = /usr
BINDIR = $(PREFIX)/bin

install:
	if [ " $$EUID " -ne 0 ]; then echo "Run as Root "; exit 1; fi
	@echo "Installing Pardus Package Manager"
	bash helpers/install-stuff
	install -m 755 pardus $(BINDIR)/pardus
	install -m 755 pardus-tui $(BINDIR)/pardus-tui
	install -m 755 pardus-gui $(BINDIR)/pardus-gui
	@echo "Installation complete"

uninstall:
	if [ "$$EUID" -ne 0 ]; then echo "Run as Root "; exit 1; fi
	@echo "Removing Pardus Package Manager"
	rm -f $(BINDIR)/pardus $(BINDIR)/pardus-tui $(BINDIR)/pardus-gui
	rm -f $(BINDIR)/pardus-helper
	@echo "Uninstall complete"

desktop:
	bash helpers/pardus-desktop

help:
	@echo "Pardus Package Manager"
	@echo
	@echo "Options"
	@echo
	@echo "install: Installs the Pardus Package Manager to Your System"
	@echo
	@echo "uninstall: Uninstalls the Pardus Package Manager from Your System"
	@echo
	@echo "desktop: Creates a desktop shorcut for the Pardus Package Manager, recommended to use for beginners"
	@echo
	@echo "clean: Removes and cleans everything"

clean:
	rm -rf __pycache__ .venv
