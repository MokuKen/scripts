#!/bin/sh

headphone_address="41:42:7B:9C:57:8A"
headphone_sink="bluez_sink.41_42_7B_9C_57_8A.a2dp_sink"

pactl get-default-sink
bluetoothctl power on
bluetoothctl remove $headphone_address
sleep 3 && echo "Press CTR + C when the deivce is discoverd!"
bluetoothctl scan on
bluetoothctl pair $headphone_address
bluetoothctl trust $headphone_address
bluetoothctl connect $headphone_address
pactl set-default-sink $headphone_sink
