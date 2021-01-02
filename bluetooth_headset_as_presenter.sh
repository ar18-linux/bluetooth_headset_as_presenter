#!/bin/bash

g_last_date=$(date +%s)
echo ${g_last_date}

function run() {
  while IFS= read LINE; do
    echo "${LINE}"
    if echo "${LINE}" | grep 'dlen 12'; then
      left
    elif echo "${LINE}" | grep 'dlen 9'; then
      right
    fi
  done
}

function left() {
  local now=$(date +%s)
  #echo ${now}
  #echo $((now - g_last_date))
  if ((now - g_last_date <= 0)); then
    return
  fi
  g_last_date=${now}
  echo left
  xdotool key Left
}

function right() {
  local now=$(date +%s)
  #echo ${now}
  #echo $((now - g_last_date))
  if ((now - g_last_date <= 0)); then
    return
  fi
  g_last_date=${now}
  echo left
  xdotool key Right
}

if tty >/dev/null; then
  echo --------------------------------------------
else
  # stdin is not a tty: process standard input
  echo "!tty"
  run
fi
