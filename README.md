# tmux-plugin-uptime
tmux plugin showing computer uptime

Installation
------------
### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

```
set -g @plugin '3ximus/tmux-plugin-uptime'
```

Hit `prefix + I` to fetch the plugin and source it.

Put in `tmux.conf`

```
set-option -g status-right "#[fg=colour7]#{uptime}"
```
