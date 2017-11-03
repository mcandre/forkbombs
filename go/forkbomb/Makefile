VERSION=0.0.1

.PHONY: port clean clean-ports

all: test

test:
	forkbomb

govet:
	find . -path "*/vendor*" -prune -o -name "*.go" -type f -exec go tool vet -shadow {} \;

golint:
	find . -path '*/vendor/*' -prune -o -name '*.go' -type f -exec golint {} \;

gofmt:
	find . -path '*/vendor/*' -prune -o -name '*.go' -type f -exec gofmt -s -w {} \;

goimport:
	find . -path '*/vendor/*' -prune -o -name '*.go' -type f -exec goimports -w {} \;

errcheck:
	errcheck -blank

nakedret:
	nakedret -l 0 ./...

lint: govet golint gofmt goimport errcheck nakedret

port: archive-ports

archive-ports: bin
	zipc -C bin "forkbomb-$(VERSION).zip" "forkbomb-$(VERSION)"

bin:
	gox -output="bin/forkbomb-$(VERSION)/{{.OS}}/{{.Arch}}/{{.Dir}}" ./cmd/...

clean: clean-ports

clean-ports:
	rm -rf bin
