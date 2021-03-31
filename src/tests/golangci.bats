TOOL_NAME="golangci-lint"
TOOL_VERSION="1.27.0"
BIN_PATH="/tmp/bin"

setup() {
    source ./src/scripts/install-${TOOL_NAME}.sh
}

@test "1: Test ${TOOL_NAME} Install' {
    run Install
    echo $lines
    [[ "$lines" =~ "${TOOL_VERSION}" ]]
    run ${BIN_PATH}/${TOOL_NAME} --version
    echo $lines
    [ $status = 0 ]
}
