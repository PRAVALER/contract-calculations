SUBDIRS := . recalculo
SUBDIRSCLEAN := $(addsuffix clean, $(SUBDIRS))

# =============================================
# -----[Limpa os arquivos de build do PDF]-----
# =============================================

clean: $(SUBDIRSCLEAN)
clean.curdir:
	@rm -rfv *.aux *.fdb_latexmk *.fls *.log *.pdf *.sta *.synctex.gz
%clean: %
	$(MAKE) -C $< -f $(PWD)/Makefile clean.curdir
