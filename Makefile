# all: serve todos

# serve:
# 	mkdocs serve

todos:
	emacs -chdir docs/wiki -batch -l TODOs.el

# watch:
# 	ls docs/wiki/TODOs.org | entr -c make
