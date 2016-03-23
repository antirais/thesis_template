# Thesis template

Generic LaTeX template for those who want to use version control and text based tools to write their papers. It contains a general structure and examples how to insert code examples and images to the document. In addtion, there is a possibility to highlight the example source-code.

## Setup
Setup was tested on Ubuntu/Debian system. Others packages might be necessary depending on your preferences.
```sh
$ sudo apt-get install texlive texlive-latex-extra latexmk texlive-lang-european
```

## Build the document
To build the PDF document, you can use the following:
- command line tools
    ```sh
    	latexmk -pdf -bibtex filename.tex
    	evince filename.pdf &
    ```

- make file; a simple wrapper for the commands above
    ```sh
    	$ make 			- builds the PDF file
    	$ make view 	- opens the file with evince PDF viewer
    	$ make clean 	- remove files from build/, including the generated PDF
    	$ make info 	- show metainfo about generated PDF file
    ```

- install vim plugin vimhook, then the PDF is regenerated on buffer write (save).

The generated PDF is in the build/ directory.

## Structure
- appendixes/
    ```
    Contains appendix files included in appendix.tex.
    ```
- build/
    ```
    Contains build files and logs. Generated PDF is in this folder.
    ```
- chapters/
    ```
    PDF content and various chapters together with subsections are in this folder. The include directives can be found in the thesis.tex file.
    ```
    - 1/
    - 2/
    - 3/
    - 4/
    - abstract.tex
        ```
        Abstract in English and Estonian.
        ```
    - declaration.tex
        ```
        Declaration. Make sure to edit this to contain your name.
        ```
    - title.tex
        ```
        Title page. Make sure to edit this to your needs.
        ```
- code/
    ```
    Example source code files.
    ```
- img/
    ```
    Image files and graphics to add to the paper.
    ```
- README
    ```
    This document.
    ```
- acronyms.tex
    ```
    Acronyms used in the document.
    ```
- appendix.tex
    ```
    Generic appendix file. Reads various appendixes from the appendixes/ directory.
    ```
- makefile
    ```
    Helper script to built the PDF and open the PDF viewer.
    ```
- references.bib
    ```
    Add your references to this file. Contains variuos examples how to reference different type of documents.
    ```
- tex.bufwritepost.vimhook.sh
    ```
    vimhook file for those whoe prefer vim and have installed the vimhook plugin. This will build the PDF on write by executing make.
    ```
- thesis.tex
    ```
    Main file that contains various library imports and configuration paremeters. Edit this file to suit your needs.
    ```

### Development

Want to contribute? Something needs improving? Great! Send a pull request.
