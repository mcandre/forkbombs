VERSION=0.0.1

.PHONY: port clean clean-ports

all: test

test:
	forkbomb

govet:
	go list ./... | grep -v vendor | xargs go vet -v

gofmt:
	find . -path '*/vendor/*' -prune -o -name '*.go' -type f -exec gofmt -s -w {} \;

goimport:
	find . -path '*/vendor/*' -prune -o -name '*.go' -type f -exec goimports -w {} \;

lint: govet gofmt goimport

port:
	goport -l $(VERSION)

clean: clean-ports

clean-ports:
	rm -rf bin
