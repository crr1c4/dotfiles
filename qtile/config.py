import sys
from os.path import expanduser
sys.path.append(expanduser('./'))

from libqtile import bar, layout, qtile, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
from libqtile.backend.wayland.inputs import InputConfig

mod = "mod4" # Windows key
terminal = guess_terminal()

keys = [
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    Key(
        [mod, "shift"],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
    ),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
    Key(
        [mod],
        "f",
        lazy.window.toggle_fullscreen(),
        desc="Toggle fullscreen on the focused window",
    ),
    Key([mod], "t", lazy.window.toggle_floating(), desc="Toggle floating on the focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
]

# Add key bindings to switch VTs in Wayland.
# We can't check qtile.core.name in default config as it is loaded before qtile is started
# We therefore defer the check until the key binding is run by using .when(func=...)
for vt in range(1, 8):
    keys.append(
        Key(
            ["control", "mod1"],
            f"f{vt}",
            lazy.core.change_vt(vt).when(func=lambda: qtile.core.name == "wayland"),
            desc=f"Switch to VT{vt}",
        )
    )

groups = [
    Group("term", label=""),
    Group("web", label="󰖟",
          # matches=[Match(wm_class=["firefox"])]
          ),
    Group("files", label="󱧷",
          # matches=[Match(wm_class=["nautilus"])]
          ),
    Group("music", label="󰫔", 
          # matches=[Match(wm_class=["g4music"])]
          ),
]

keys.extend([
    Key([mod], "1", lazy.group["term"].toscreen()),
    Key([mod, "shift"], "1", lazy.window.togroup("term", switch_group=True)),

    Key([mod], "2", lazy.group["web"].toscreen()),
    Key([mod, "shift"], "2", lazy.window.togroup("web", switch_group=True)),
    
    Key([mod], "3", lazy.group["files"].toscreen()),
    Key([mod, "shift"], "3", lazy.window.togroup("files", switch_group=True)),

    Key([mod], "4", lazy.group["music"].toscreen()),
    Key([mod, "shift"], "4", lazy.window.togroup("music", switch_group=True)),
])

layouts = [
    layout.MonadTall(
        border_focus='#96ff3c',
        border_normal='#699469',
        border_width = 2,
        single_border_width = 0,
        margin=10),
    # layout.Max(),
]

widget_defaults = dict(
    font="sans",
    fontsize=12,
    padding=3,
)

extension_defaults = widget_defaults.copy()

from components.widgets import battery, cpu, clock, ram, network, music

screens = [
    Screen(
        wallpaper = '~/Pictures/kanagawa.jpg',
        wallpaper_mode = 'fill', 
        top = bar.Bar([
            widget.GroupBox(
            font='SpaceMono Nerd Font Regular',
            fontsize=20,
            margin_y=5,
            margin_x=5,
            padding_y=0,
            padding_x=5,
            borderwidth=0,
            disable_drag=True),
            widget.Prompt(),
            widget.WindowName(),
            widget.Chord(
                    chords_colors={
                        "launch": ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                # widget.StatusNotifier(),
            music,
            # network,
            clock,
            battery,
            cpu,
            ram,
            # widget.CurrentLayout(),
            widget.QuickExit(),
        ],
            25, # Size
            background = "#000000AA",
            opacity = 1,
        ),
    )
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
floats_kept_above = True
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

wl_input_rules = {
    "type:touchpad": InputConfig(tap=True, natural_scroll=True, drag=True),
    "type:keyboard": InputConfig(kb_layout="latam"),
}

wl_xcursor_theme = None
wl_xcursor_size = 24

# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
