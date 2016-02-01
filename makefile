# Command lines can have one or more of the following three prefixes:
#
#	-		specifying that errors are ignored
#	@		specifying that the command is not printed to standard output before it is executed
#	+		the command is executed even if Make is invoked in a "do not execute" mode
#
# 	https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html
#	${}		macro
#	$<		refers to the first prerequisite and
#	$@		refers to the target
#
#	target: component1 component2
#			echo $? contains those components, which need attention (i.e. they ARE YOUNGER than current TARGET).
#			echo $@ evaluates to current TARGET name from among those left of the colon.

FILE = thesis
BUILD_DIR = build

all: $(FILE).tex
	@latexmk -pdf -bibtex $(FILE) -jobname=$(BUILD_DIR)/$(FILE)

view:
	@evince $(BUILD_DIR)/$(FILE).pdf &

clean:
	@rm $(BUILD_DIR)/*

info:
	@pdfinfo $(BUILD_DIR)/$(FILE).pdf

