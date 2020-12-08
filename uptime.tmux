#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

uptime_status="#($CURRENT_DIR/scripts/uptime.sh)"
uptime_status_interpolation="\#{uptime}"

update_tmux_option() {
  local option_value="$(tmux show-option -gqv "$1")"
  tmux set-option -gq "$1" "${option_value/$uptime_status_interpolation/$uptime_status}"
}

main() {
  update_tmux_option "status-right"
  update_tmux_option "status-left"
}

main
