#!/bin/bash

g_last_date=$(date +%s)
echo ${g_last_date}

function run() {
  while IFS= read LINE; do
    echo "${LINE}"
    if echo "${LINE}" | grep 'dlen 12'; then
      right
    fi
  done
}

function left() {
  local now=$(date +%s)
  if ((now - g_last_date <= 0)); then
    return
  fi
  g_last_date=${now}
  xdotool key Left
}

function right() {
  local now=$(date +%s)
  if ((now - g_last_date <= 0)); then
    return
  fi
  g_last_date=${now}
  xdotool key Right
}

if tty >/dev/null; then
  echo --------------------------------------------
else
  echo "!tty"
  run
fi
