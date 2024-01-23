#!/bin/sh
set -e

COPIER_PATH=/home/copier/.local/bin/copier

# Handle if there are no arguments
if [[ $# -eq 0 ]]; then
    $COPIER_PATH --help
# Handle if the user provides a flag (e.g. --help)
elif [[ "${1#-}" != "$1" ]]; then
    exec $COPIER_PATH "$@"
# Handle if the user invokes the copier script directly
elif [[ $1 == "copier" ]]; then
    exec $COPIER_PATH "${@:2}"
# Handle if the user invokes a subcommand directly
elif [[ $1 == "copy" || $1 == "recopy" || $1 == "update" ]]; then
    exec $COPIER_PATH "$@"
# Handle if the user provides a pointer to a Git repository
elif [[ $1 == gh* || $1 == gl* || $1 == git* ]]; then
    if [[ -e /project ]]
    then
        $COPIER_PATH copy $1 /project
    else
        echo "No project mounted at /project, exiting"
        exit 1
    fi
# Otherwise exec the command since they are not using copier
else
    exec "$@"
fi
