#!/bin/bash
# Script para crear el archivo PDF de la tarea
# Modifica las variable TAREA Y TAREAPDF de acuerdo a tus archivos
TAREA=PaternoMaternoN_tarea.md
TAREAPDF=PaternoMaternoN_tarea.pdf
pandoc -s -S --template plantilla_tarea.tex --filter pandoc-citeproc --csl csl/apa.csl --bibliography biblio/bibliografia.bib -o $TAREAPDF $TAREA
