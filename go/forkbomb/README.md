# DOCUMENTATION

https://godoc.org/github.com/mcandre/forkbombs/go/forkbomb/cmd/forkbomb

# RUNTIME REQUIREMENTS

(None)

# BUILDTIME REQUIREMENTS

* [Go](https://golang.org/) 1.9+

## Recommended

* [Mage](https://magefile.org/) (e.g., `go get github.com/magefile/mage`)
* [goimports](https://godoc.org/golang.org/x/tools/cmd/goimports) (e.g. `go get golang.org/x/tools/cmd/goimports`)
* [golint](https://github.com/golang/lint) (e.g. `go get github.com/golang/lint/golint`)
* [errcheck](https://github.com/kisielk/errcheck) (e.g. `go get github.com/kisielk/errcheck`)
* [nakedret](https://github.com/alexkohler/nakedret) (e.g. `go get github.com/alexkohler/nakedret`)

# INSTALL FROM REMOTE GIT REPOSITORY

```
$ go get github.com/mcandre/forkbombs/go/forkbomb/...
```

(Yes, include the ellipsis as well, it's the magic Go syntax for downloading, building, and installing all components of a package, including any libraries and command line tools.)

# INSTALL FROM LOCAL GIT REPOSITORY

```
$ mkdir -p $GOPATH/src/github.com/mcandre
$ git clone git@github.com:mcandre/forkbombs.git $GOPATH/src/github.com/mcandre/forkbombs
$ git submodule update --init --recursive
$ go install ./...
```

# LINT

Keep the code tidy:

```
$ mage lint
```
