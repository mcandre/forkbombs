all: lint

lint: editorconfig

editorconfig:
	flcl . | xargs -n 100 editorconfig-cli check
