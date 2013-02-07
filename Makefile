# Name of your emacs binary
EMACS=emacs

BATCH=$(EMACS) --batch -Q --eval '(require (quote org))' --eval '(setq starter-kit-dir default-directory)'

FILES = starter-kit.org			\
	starter-kit-bindings.org	\
	starter-kit-defuns.org		\
	starter-kit-misc.org		\
	starter-kit-registers.org

FILESO = $(FILES:.org=.el)

all: el
	$(BATCH) --eval '(mapc (lambda (x) (byte-compile-file (symbol-name x))) (quote ($(FILESO))))'

el: $(FILES)
	$(BATCH) --eval '(mapc (lambda (x) (org-babel-load-file (symbol-name x))) (quote ($(FILES))))'

%.el: %.org
	$(BATCH) --eval '(org-babel-load-file "$<")'

doc: doc/index.html

doc/index.html:
	mkdir -p doc
	$(EMACS) --batch -Q --eval '(org-babel-load-file "starter-kit-publish.org")'
	rm starter-kit-publish.el
	cp doc/starter-kit.html doc/index.html
	echo "Documentation published to doc/"

clean:
	rm -f *.elc *.aux *.tex *.pdf starter-kit*.el starter-kit*.html doc/*html *~ .starter-kit*.part.org
