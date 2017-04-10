FLAGS=-O

BIN=target/debug/bomb

all: test

test: $(BIN)
	$(BIN)

$(BIN): src/bin/bomb.rs
	cargo build

clean:
	-rm -rf target
