all: lint

funk:
	@funk .

yamllint:
	@yamllint -s .yamllint
	@yamllint -s .

editorconfig:
	@git ls-files -z | xargs -0 -r -n 100 $(shell npm bin)/eclint check

lint: funk yamllint editorconfig
