from libqtile import bar, widget

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
        widget.TextBox("| Battery: ", foreground="#d75f5f"),
        widget.Battery(),
        widget.Systray(),
        widget.Clock(format='%Y-%m-%d %a %I:%M %p'),
        #widget.QuickExit(),
    ], 24)

minimal_bar = bar.Bar([
    widget.CurrentLayout(),
    widget.GroupBox()]
    , 30)
