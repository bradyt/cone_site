all: serve todos

serve:
	mkdocs serve

todos:
	emacs -chdir docs/development -batch -l TODOs.el

watch:
	ls docs/development/TODOs.org | entr -c make

deploy:
	mkdocs gh-deploy
