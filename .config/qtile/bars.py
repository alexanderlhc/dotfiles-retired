from typing import Text
from libqtile import bar, widget

import subprocess
hasBattery = get_batterystatus = subprocess.check_output(['acpi', '-i']).decode('utf-8').strip() != ""

# TODO: find cleaner way
batteryText = widget.TextBox("| Battery: ", foreground="#d75f5f") if hasBattery else null
batteryWidget = widget.Battery() if hasBattery else null

main_bar = bar.Bar([
        widget.CurrentLayout(),
        widget.GroupBox(),
        widget.Prompt(),
        widget.WindowName(),
        widget.Chord(
            chords_colors={
                'launch': ("#ff0000", "#ffffff"),
                },
            name_transform=lambda name: name.upper(),
            ),
        widget.TextBox("| Volume: ", foreground="#d75f5f"),
        widget.Volume(),
        batteryText,
        batteryWidget,
        widget.TextBox("|", foreground="#d75f5f"),
        widget.Systray(),
        widget.Clock(format='%Y-%m-%d %a %I:%M %p'),
        #widget.QuickExit(),
    ], 24)


minimal_bar = bar.Bar([
    widget.CurrentLayout(),
    widget.GroupBox()]
    , 30)
