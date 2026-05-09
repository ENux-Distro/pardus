PREFIX = /usr
BINDIR = $(PREFIX)/bin

install:
	@echo "Installing Pardus Package Manager | Pardus Paket Yöneticisi Kuruluyor"
	bash helpers/install-stuff
	install -m 755 pardus $(BINDIR)/pardus
	install -m 755 pardus-tui $(BINDIR)/pardus-tui
	install -m 755 pardus-gui $(BINDIR)/pardus-gui
	@echo "Installation complete | İndirme operasyonu bitmiştir"

uninstall:
	if [ "$EUID" -ne 0 ]; then echo "Run as Root | Root olarak çalıştırınız"; exit 1; fi
	@echo "Removing Pardus Package Manager | Pardus Paket Yöneticisi Siliniyor"
	rm -f $(BINDIR)/pardus
	rm -f $(BINDIR)/pardus-helper
	@echo "Uninstall complete | Silinme operasyonu bitmiştir"

desktop:
	bash helpers/pardus-desktop

help:
	@echo "Pardus Package Manager | Pardus Paket Yöneticisi"
	@echo
	@echo "Options | Seçenekler"
	@echo
	@echo "install: Installs the Pardus Package Manager to Your System | install: Pardus Paket Yöneticisini Sisteminize İndirir"
	@echo
	@echo "uninstall: Uninstalls the Pardus Package Manager from Your System | uninstall: Pardus Paket Yöneticisini Sisteminizden Siler"
	@echo
	@echo "desktop: Creates a desktop shorcut for the Pardus Package Manager, recommended to use for beginners | desktop: Pardus Paket Yöneticisi İçin Masaüstü Kısayolu Oluşturur, Başlangıç Seviyesi Kullanıcılar İçin Önerilir"
	 
