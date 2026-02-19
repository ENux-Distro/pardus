PREFIX = /usr
BINDIR = $(PREFIX)/bin

install:
	@echo "Installing Pardus Package Manager | Pardus Paket Yöneticisi Kuruluyor"
	sudo install -m 755 pardus $(BINDIR)/pardus
	sudo install -m 755 pardus-helper $(BINDIR)/pardus-helper
	@echo "Installation complete | İndirme operasyonu bitmiştir"

uninstall:
	@echo "Removing Pardus Package Manager | Pardus Paket Yöneticisi Siliniyor"
	sudo rm -f $(BINDIR)/pardus
	sudo rm -f $(BINDIR)/pardus-helper
	@echo "Uninstall complete | Silinme operasyonu bitmiştir"

desktop:
        bash helpers/pardus-desktop
