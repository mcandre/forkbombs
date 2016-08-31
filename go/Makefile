# Windows
ifeq ($(OS),Windows_NT)
	EXTENSION=.exe
	RM=cmd /c rmdir /s /q
else
	EXTENSION=
	RM=rm -rf
endif

BIN=bin/forkbomb$(EXTENSION)

all: test

test: $(BIN)
	$(BIN)

$(BIN): forkbomb.go
	go build -o $(BIN) forkbomb.go

gofmt:
	gofmt -s -w .

lint: gofmt

clean:
	-$(RM) bin
