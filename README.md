# Plantilla para tareas en texto plano con Markdown

Archivos para elaborar tareas o trabajo sencillos utilizando Markdown, se puede emplear para sistemas MS Windows, GNU/Linux y OSX.

Es necesario tener instalar **git**, **LaTeX**, **pandoc** y un procesador de texto.

**Git** es un sistema de control de versiones diseñado por Linus Torvalds, pensando en la eficiencia y la confiabilidad del mantenimiento de versiones de proyecto cuando éstas tienen un gran número de archivos.

**LaTeX** es un sistema de composición de textos, orientado a la creación de documentos escritos que presenten una alta calidad tipográfica. Por sus características y posibilidades, es usado de forma especialmente intensa en la generación de artículos y libros científicos que incluyen, entre otros elementos, expresiones matemáticas.

**Pandoc** es un convertidor de documentos de software libre y código abierto, ampliamente utilizado crear documento PDF, HTML, DOCX, TXT, XML, EPUB, DocBook, Libre Office ODT entro otros.

Recomiendo utilizar los siguientes editores de textos para markdown: [Haroopad](http://pad.haroopress.com), [Atom](https://atom.io) o [Spacemacs](http://spacemacs.org)([Emacs](https://www.gnu.org/software/emacs/)).

Una buena opción es emplear **git** para mantener un control sobre el trabajo. Puedes aprender más sobre su uso en la [guía rápida de git](http://rogerdudler.github.io/git-guide/index.es.html) y [libro comunitario para el uso de git](https://git-scm.com/book/es/v1/Fundamentos-de-Git)

Se debe emplear la siguiente estructura para la entrega de trabajos:

- PaternoMatenoN_tarea


Elemento | Descripción |
--- | --- |
Paterno | Apellido paterno iniciando con la primera letra en mayúscula. |
Materno | Corresponde al apellido materno iniciando con la primera letra en mayúscula. |
N | Inicial del primer nombre, sí se tiene dos nombre utilizar las iniciales de cada uno en mayúsculas.
_ | Guión bajo se empla como separación. |
tarea | Es el nombre de la tarea o unidad solicitada. |


Ejemplo:

- Nombre: Luis Octavio Ramírez Fernández
- Tarea: Unidad 1

RamirezFernandezLO_unidadI.md

## Cómo iniciar
```bash
git clone https://github.com/opengraphix/plantilla_tareas_md.git

cd plantilla_tareas_md
```

Abrir el archivo PaternoMatenoN_tarea.md con tu procesador de textos favorito ([Haroopad](http://pad.haroopress.com), [Atom](https://atom.io), [Emacs](https://www.gnu.org/software/emacs/), [VIM](http://www.vim.org/download.php), [Texmate](https://macromates.com/download), etc.) y modificarlo con tus datos.

## Cómo crear PDF, DOCX, EPUB y HTML

Una vez terminado tu tesis, para crear el archivo PDF utiliza los siguientes pasos según sea el caso. Modifica el archivo Makefile en las variables **TEXMD** y **TAREA** de acuerdo a tu nombre

### Windows, Linux y OSX

#### PDF

```
make pdf
```

#### Microsoft Word

```
make docx
```

#### ePub

```
make epub
```

#### HTML

```
make html
```

## Crear un PDF

Una vez terminado el trabajo o tarea el archivo PaternoMaternoN_tarea.md, hay que crear el archivo PDF de la siguiente manera, según sea el caso.

### Windows
Desde el CMD

```cmd
pandoc -s -S --template plantilla_tarea.tex --filter pandoc-citeproc --csl csl/apa.csl --bibliography biblio/bibliografia.bib -o PaternoMaternoN_tarea.pdf PaternoMaternoN_tarea.md
```

### Linux y OSX
Ejecutar el script crearpdf.sh

```bash
chmod 755 crearpdf.sh
./crearpdf.sh
```

## Agregar bibliografía
Las nuevas fuentes bibliográficas se agregan en *biblio/bibliografia.bib* empleando el formato BibTeX. [Cómo usar BibTex](http://www.bibtex.org/Using/)

## Requerimientos
### Windows
- Git [http://git-scm.com](http://git-scm.com)
- GNU Make
- GNU Awk
- MiKTeX, [http://miktex.org](http://miktex.org/download)
- Texmaker, [www.xm1math.net/texmaker/](http://www.xm1math.net/texmaker/download.html)
- Pandoc, [https://github.com/jgm/pandoc/releases/tag/1.16.0.2](https://github.com/jgm/pandoc/releases/tag/1.16.0.2)
- Haroopad, [http://pad.haroopress.com/user.html](http://pad.haroopress.com/user.html)
- Atom, [http://atom.io/](http://atom.io/)


### OSX
- Git [http://git-scm.com](http://git-scm.com)
- GNU Make (Se debe instalar y descargar desde la línea de comandos)
- GNU Awk
- MacTeX, [https://tug.org/mactex/](https://tug.org/mactex/downloading.html)
- Texmaker, [www.xm1math.net/texmaker/](http://www.xm1math.net/texmaker/download.html)
- Pandoc, [https://github.com/jgm/pandoc/releases/tag/1.16.0.2](https://github.com/jgm/pandoc/releases/tag/1.16.0.2)
- Haroopad, [http://pad.haroopress.com/user.html](http://pad.haroopress.com/user.html)
- Atom, [http://atom.io/](http://atom.io/)


### Linux
- Git [http://git-scm.com](http://git-scm.com)
- GNU Make
- GNU Awk
- Latex, instalar según tu distribución con apt-get, yum, zypper, pacman o tgz.
- Texmaker, [www.xm1math.net/texmaker/](http://www.xm1math.net/texmaker/download.html)
- Pandoc, [https://github.com/jgm/pandoc/releases/tag/1.16.0.2](https://github.com/jgm/pandoc/releases/tag/1.16.0.2)
- Haroopad, [http://pad.haroopress.com/user.html](http://pad.haroopress.com/user.html)
- Atom, [http://atom.io/](http://atom.io/)
