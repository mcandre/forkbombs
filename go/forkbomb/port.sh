#!/bin/bash

usage() {
    echo "Usage: $0 <app-name> <project-version> <bin-directory> <command-line-root-directory>"
    echo "Example: $0 ios7crypt beta bin cmd"
    exit 0
}

if [ "$#" -ne 4 ]; then
    usage
fi

APP_NAME="$1"
VERSION="$2"
BIN_ROOT="$3"
CMD_ROOT="$4"

TARGETS=$(go tool dist list)
SCRIPTS=$(ls "$CMD_ROOT" | grep -v bin)

for s in $SCRIPTS; do
    for t in $TARGETS; do
        echo "Building binary for script $s targetting platform $t..."

        OS="$(echo $t | sed 's/\/.*//')"
        ARCH="$(echo $t | sed 's/.*\///')"

        SUFFIX=''

        if [ "$OS" = 'windows' ]; then
            SUFFIX='.exe'
        fi

        mkdir -p "${BIN_ROOT}/${APP_NAME}-${VERSION}/${t}"

        sh -c "cd ${CMD_ROOT}/${s} && mkdir -p ${BIN_ROOT}/${ARCHIVE_BASENAME}/${t} && env GOOS=${GOOS} GOARCH=${GOARCH} go build -o \"../../${BIN_ROOT}/${APP_NAME}-${VERSION}/${t}/${s}${SUFFIX}\""
    done
done

sh -c "cd ${BIN_ROOT} && zip -r \"${APP_NAME}-${VERSION}.zip\" \"${APP_NAME}-${VERSION}\" -x '*.DS_Store' -x '*Thumbs.db'"

echo "Archived ports in ${BIN_ROOT}/${APP_NAME}-${VERSION}.zip"
