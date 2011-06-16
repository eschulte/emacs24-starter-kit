# Name of your emacs binary
EMACS=emacs

all:
	mkdir -p doc
	$(EMACS) --batch -Q --eval '(org-babel-load-file "starter-kit-publish.org")'
	rm starter-kit-publish.el
	cp doc/starter-kit.html doc/index.html
	echo "Documentation published to doc/"

clean:
	rm -f *.elc *.aux *.tex *.pdf starter-kit*.el starter-kit*.html doc/*html

destructively-clean: clean
	printf "rm -rf %s\n" `cat .gitignore|grep -v ^#`|/bin/sh
