#!/bin/bash

SSID=$1
PASSWORD=$2

if [[ -z $1 ]]; then
  echo "Usage: $0 [SSID] [PASS]"
  echo "  *wrap SSID and PASS in single quotes (i.e. 'ssid' 'pass')"
  exit 0
fi

if [[ -z $2 ]]; then
  nmcli con add type wifi con-name "$SSID" ifname wlan0 ssid "$SSID"
  nmcli con up id "$SSID"
else
  nmcli con add type wifi con-name "$SSID" ifname wlan0 ssid "$SSID"
  nmcli con modify "$SSID" wifi-sec.key-mgmt wpa-psk
  nmcli con modify "$SSID" wifi-sec.psk "$PASSWORD"
  nmcli con up id "$SSID"
fi
