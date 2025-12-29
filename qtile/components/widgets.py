from libqtile import widget
# from libqtile.lazy import lazy
from .utils import colors
# from qtile_extras import widget as xwidget
# from qtile_extras.popup.templates.mpris2 import COMPACT_LAYOUT

...

# NB DEFAULT_LAYOUT is included by default and does not need to be imported in
# your config
COMMONS = {
    "font": "SpaceMono Nerd Font",
    "foreground": colors["black"],
    "fontsize": 14,
    "padding": 8,

}

battery = widget.Battery(
    **COMMONS,
    background = colors["blue"],
    format = '{char} {percent:2.0%}',
    charge_char = '󰂋',
    not_charging_char = '󱟨',
    full_char = '󱟢',
    discharge_char = '󱟞',
    empty_char = '󱃍',
    unknown_char = '?',
    update_interval = 2
)

spacer = widget.Spacer(length=10)

cpu = widget.CPU(
    **COMMONS,
    background = colors["blue"],
    format = ' {load_percent}%'
)

ram = widget.Memory(
    **COMMONS,
    background = colors["blue"],
    format = ' {MemUsed: .0f}{mm}/{MemTotal:.0f}{mm}',
    measure_mem='G'
)

clock = widget.Clock(
    **COMMONS,
    format=" %d/%m  %H:%M:%S",
    background = colors["green"],
    # mouse_callbacks = {'Button1': lazy.spawn('gnome-calendar')}
)

network = widget.Net(
    **COMMONS, 
    interface='wlp1s0', 
    # CRÍTICO: Añade {mask} para la máscara de subred
    format=' {interface} {down} ↓↑ {up}', 
    
    background=colors["magenta"], 
    # mouse_callbacks={'Button1': lazy.spawn('nm-connection-editor')}
)

music = widget.Mpris2(
    **COMMONS,
    background = colors["yellow"],
    format = "{xesam:title} ",
    paused_text = " {track}",
    playing_text = " {track}"
)

                # widget.Bluetooth(),
    #             widget.Bluetooth(
    # mouse_callbacks = {'Button1': lazy.spawn('blueman-manager')}
