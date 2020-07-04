help:
	@echo "  serve   ==> mkdocs serve"
	@echo "  deploy  ==> mkdocs deploy"

all: todos serve

serve:
	mkdocs serve

todos:
	emacs -chdir docs/development -batch -l TODOs.el

watch:
	ls docs/development/TODOs_source.org | entr -s 'make todos'

deploy:
	mkdocs gh-deploy
