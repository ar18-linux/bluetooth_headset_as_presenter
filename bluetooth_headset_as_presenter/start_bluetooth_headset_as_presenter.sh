#!/bin/bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

sudo btmon | grep --line-buffered RX | "${script_dir}/bluetooth_headset_as_presenter.sh"