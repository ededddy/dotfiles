set -gx TERM xterm-256color

# theme
#set -g theme_color_scheme terminal-dark
#set -g fish_prompt_pwd_dir_length 1
#set -g theme_display_user yes
#set -g theme_hide_hostname no
#set -g theme_hostname always
base16-atelier-dune
# starship init fish | source

# aliases
if command -v exa > /dev/null
	alias  l 'exa'
	alias  ls 'exa'
	alias  ll 'exa -l'
	alias  la 'exa -la'
else
	abbr -a ls 'ls -p -G'
	abbr -a ll 'ls -l'
	abbr -a la 'ls -A'
end
alias g git
command -qv nvim && alias vim nvim

set -gx EDITOR vim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# Go
set -x GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH
set -gx PATH /usr/local/go/bin $PATH

# Rust
set -gx PATH "$HOME/.cargo/bin" $PATH;

# NodeJS
set -gx PATH node_modules/.bin $PATH
nvm use default
set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

if ! set -q TMUX
  exec tmux
end


