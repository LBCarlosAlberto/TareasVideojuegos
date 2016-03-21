## Markdown extension (e.g. md, markdown, mdown).
TEXMD=PaternoMaternoN_tarea
TAREA=PaternoMaternoN_tarea
BASEDIR=$(CURDIR)
ESTILOSDIR=$(BASEDIR)/estilos
## Localización de los archivo soportados por Pandoc
PREFIX = /Users/lramirez/.pandoc

## Localización del archivo de bibliografía
BIB=$(BASEDIR)/biblio/bibliografia.bib

## CSL hojas de estilos para citas
CSL = $(ESTILOSDIR)/apa

help:
	@echo ' 																	  '
	@echo 'Makefile para la tesis con archivo Markdown                           '
	@echo '                                                                      '
	@echo 'Uso:                                                                  '
	@echo '   make html                        genera una version web            '
	@echo '   make pdf                         genera un archivo en PDF  			  '
	@echo '   make docx	                       genera un archivo en Docx 			  '
	@echo '   make epub	                       genera un archivo en ePub 			  '
	@echo '                                                                      '
	@echo ' 																	  '
	@echo ' 																	  '
	@echo 'trae las plantillas con: pandoc -D latex/html/etc	  				  '
	@echo 'o unas genericas desde:https://github.com/jgm/pandoc-templates		  '

pdf:
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block --template "$(BASEDIR)"/plantilla_tarea.tex --filter pandoc-citeproc --csl "$(CSL)".csl --bibliography "$(BIB)" -o "$(TAREA)".pdf "$(TEXMD)".md

docx:
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -s -S --filter pandoc-citeproc --csl "$(CSL)".csl --bibliography "$(BIB)" --toc --number-sections -o "$(TAREA)".docx "$(TEXMD)".md

epub:
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -s -S --filter pandoc-citeproc --csl "$(CSL)".csl --bibliography "$(BIB)" --toc --number-sections --epub-stylesheet="$(ESTILOSDIR)"/epub.css --to epub3 -o "$(TAREA)".epub "$(TEXMD)".md

html:
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w html -S --template="$(ESTILOSDIR)"/template.html --include-in-header="$(ESTILOSDIR)"/style.css --filter pandoc-citeproc --csl "$(CSL)".csl --bibliography="$(BIB)" --toc --number-sections -o "$(TAREA)".html "$(TEXMD)".md


clean:
	rm -f *.html *.pdf *.docx *.epub
