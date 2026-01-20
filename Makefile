# ivoatex Makefile.  See http://ivoa.net/documents/notes/IVOATexDoc
# for the targets available.

# short name of your document (edit $DOCNAME.tex; would be like RegTAP)
DOCNAME = OccDM

# count up; you probably do not want to bother with versions <1.0
DOCVERSION = 1.0

# Publication date, ISO format; update manually for "releases"
DOCDATE = 2026-01-16

# What is it you're writing: NOTE, WD, PR, REC, PEN, or EN
DOCTYPE = WD

# An e-mail address of the person doing the submission to the document
# repository (can be empty until a make upload is being made)
AUTHOR_EMAIL = tanguy.chope@obspm.fr

# Source files for the TeX document (but the main file must always
# be called $(DOCNAME).tex)
# NOTE: role_diagram.pdf is required for architecture diagram dependency
SOURCES = $(DOCNAME).tex gitmeta.tex role_diagram.pdf

# List of image files to be included in submitted package (anything that
# can be rendered directly by common web browsers)
# NOTE: role_diagram.svg is required for HTML rendering
FIGURES = role_diagram.svg

# List of PDF figures (figures that must be converted to pixel images to
# work in web browsers).
# NOTE: Add architecture_diagram.pdf here when VO-DML diagram is finalized
VECTORFIGURES =

export TEXINPUTS := ivoatex:$(TEXINPUTS)

# Additional files to distribute (e.g., CSS, schema files, examples...)
# NOTE: Add .vo-dml.xml file here when generated from Modelio
AUX_FILES =

-include ivoatex/Makefile

ivoatex/Makefile:
	@echo "*** ivoatex submodule not found.  Initialising submodules."
	@echo
	git submodule update --init

test:
	@echo "No tests defined yet"