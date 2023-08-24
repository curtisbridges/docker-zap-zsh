#!/bin/sh
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# history
HISTFILE=~/.zsh_history

# source
# plug "$HOME/.config/zsh/aliases.zsh"
# plug "$HOME/.config/zsh/exports.zsh"

# plugins
plug "zap-zsh/supercharge"
plug "zap-zsh/completions"
plug "zap-zsh/vim"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
# plug "zap-zsh/nvm"

plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-autosuggestions"
plug "esc/conda-zsh-completion"
plug "hlissner/zsh-autopair"
plug "Aloxaf/fzf-tab"
plug "MichaelAquilina/zsh-you-should-use"
plug "embeddedpenguin/sanekeybinds"
plug "chivalryq/git-alias"

plug "zap-zsh/zap-prompt"
# plug "zap-zsh/atmachine-prompt"
# plug "spaceship-prompt/spaceship-prompt"
# plug "wintermi/zsh-starship"
# eval "$(starship init zsh)"

# keybinds
bindkey '^ ' autosuggest-accept

export PATH="$HOME/.local/bin":$PATH

# Load and initialise completion system
autoload -Uz compinit && compinit
