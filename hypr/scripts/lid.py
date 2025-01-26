#!/bin/python3.13

import datetime
import shlex
import subprocess
import sys

lid_opened = sys.argv[1] == "on"
# cmd = shlex.split("hyprctl monitors")
# output = subprocess.run(cmd, capture_output=True).stdout.decode()

# count = output.count("Monitor")

if lid_opened:
    cmds = [
        "hyprctl keyword monitor 'eDP-1, preferred, 0x0, 1'",
        "hyprctl reload",
    ]
else:
    cmds = [
        "hyprctl keyword monitor 'eDP-1, disable'",
    ]

error = "No error :)"
output = "Error :/"
try:
    output = ""
    for cmd in cmds:
        output += subprocess.run(shlex.split(cmd), capture_output=True).stdout.decode()
except Exception as e:
    error = e

suffix = "opened" if lid_opened else "closed"
time_of_script = datetime.datetime.now()
out = f"""{time_of_script} | lid {suffix}

output:
{output}

error:
{error}
"""

with open("/home/axis/.config/hypr/result.txt", "w") as f:
    f.write(out)
