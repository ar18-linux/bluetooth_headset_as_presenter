#!/bin/bash

sudo btmon | grep --line-buffered RX | ./bluetooth_headset_as_presenter.sh
#sudo btmon | ./bluetooth_headset_as_presenter.sh
#echo foobar | ./bluetooth_headset_as_presenter.sh