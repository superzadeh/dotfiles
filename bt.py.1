import os

mac = 'PASTE_HERE_MAC'

out = os.popen('bt-device --set '+ mac +' Trusted 1').read()
volume  = os.popen('amixer get Master | grep -o -E [[:digit:]]+% | head -1').read()
out = os.popen('{ sleep 1; echo "connect '+ mac +'"; sleep 10; } | bluetoothctl').read()
if('Connection successful' in out):
    print("Success")
    sinks = []
    print(volume.rstrip())
    bt_sink = os.popen('pactl list sinks short | cut -c 1-1 | sed -n 2p').read()
    os.system('pacmd set-default-sink '+bt_sink)
    os.system('pactl set-sink-volume @DEFAULT_SINK@ '+volume.rstrip())
    inputs = os.popen('pactl list sink-inputs short').read()
    inputs = inputs.rstrip().split('\n')
    for line in inputs:
        line = line.split('\t')
        sinks.append(line[0])
    for sink in sinks:
        os.system('pactl move-sink-input '+sink+' @DEFAULT_SINK@')
else:
    print("Failed")
