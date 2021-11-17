#!/usr/bin/env bash

./build.sh || exit

if ! command -v "tmux" &> /dev/null
then
    printf "Error: tmux could not be found. Install it to use this script.\n"
    exit 1
fi

command="./startepc.sh; tmux kill-window"
if [ -z "${TMUX}" ]; then
    tmux new -d "$command"
else
    tmux new-window "$command"
fi

tmux rename-window "srsran"
tmux split-window -h 'sleep 2 && ./srsuestartbase.sh'
tmux split-window -h 'sleep 4 && ./srsuestart.sh'

if [ -z "${TMUX}" ]; then
    tmux -2 attach-session -d
fi
