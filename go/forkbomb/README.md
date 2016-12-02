# REQUIREMENTS

* [Go](https://golang.org) 1.7+ with [$GOPATH configured](https://gist.github.com/mcandre/ef73fb77a825bd153b7836ddbd9a6ddc)

## Optional

* [git](https://git-scm.com)
* [make](https://www.gnu.org/software/make/)
* [bash](https://www.gnu.org/software/bash/)
* [findutils](https://www.gnu.org/software/findutils/)
* [grep](https://www.gnu.org/software/grep/manual/grep.html)
* [goimports](https://godoc.org/golang.org/x/tools/cmd/goimports) (e.g. `go get golang.org/x/tools/cmd/goimports`)
* [gox](https://github.com/mitchellh/gox) (e.g. `go get github.com/mitchellh/gox`)
* [zipc](https://github.com/mcandre/zipc) (e.g. `go get github.com/mcandre/zipc/...`)

# INSTALL FROM REMOTE GIT REPOSITORY

```
$ go get github.com/mcandre/forkbombs/go/forkbomb/...
```

(Yes, include the ellipsis as well, it's the magic Go syntax for downloading, building, and installing all components of a package, including any libraries and command line tools.)

# INSTALL FROM LOCAL GIT REPOSITORY

```
$ mkdir -p $GOPATH/src/github.com/mcandre
$ git clone git@github.com:mcandre/forkbombs.git $GOPATH/src/github.com/mcandre/forkbombs
$ sh -c "cd $GOPATH/src/github.com/mcandre/forkbombs/go/forkbomb/cmd/forkbomb && go install
```

# PORT

```
$ make port
```

# LINT

Keep the code tidy:

```
$ make lint
```
