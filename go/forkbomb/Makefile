all: test

test:
	forkbomb

govet:
		go vet -v

gofmt:
		gofmt -s -w .

lint: govet gofmt
