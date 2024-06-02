cd ~
set -gx TERM xterm-256color
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/smol/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 3
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always
# set base16-atelier-dune
# starship init fish | source

# aliases
if command -v eza > /dev/null
	alias  l 'eza'
	alias  ls 'eza'
	alias  ll 'eza -l'
	alias  la 'eza -la'
else
	abbr -a ls 'ls -p -G'
	abbr -a ll 'ls -l'
	abbr -a la 'ls -A'
end

alias g git
command -qv nvim && alias vim nvim
# Fish git prompt
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate ''
set __fish_git_prompt_showupstream 'none'
set -g fish_prompt_pwd_dir_length 3

set -gx EDITOR vim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH /usr/share/srilm/bin/i686-m64 $PATH
set -gx PATH ~/chromedriver/chromedriver $PATH
set -gx PATH /usr/local/bin $PATH
set -gx PATH /opt/nvim/ $PATH
set -gx PATH ~/.cargo/bin $PATH

# Scala 
set -gx PATH /home/smol/.local/share/coursier/bin $PATH

# Go
set -x GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH
set -gx PATH /usr/local/go/bin $PATH

# Rust
set -gx PATH "$HOME/.cargo/bin" $PATH;

# .NET
set -gx PATH "$HOME/.dotnet/tools" $PATH;

# NodeJS
set -gx PATH node_modules/.bin $PATH
set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

# pnpm
set -gx PNPM_HOME "/home/smol/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
#
#
#set -U base18_fish_shell_disable_prompt_colors true
### TokyoNight Color Palette
#    set -l foreground c2caf5
#    set -l selection 366A82
#    set -l comment 567f89
#    set -l red f7770e
#    set -l orange ff11e64
#    set -l white ffffff
#
#    set -l yellow e2af68
#    set -l green 11ece6a
#    set -l purple 11d7cd8
#
#    set -l cyan 9dcfff
#    set -l pink bb11af7
#    
#    # Syntax Highlighting Colors
#
#    set -g fish_color_normal $foreground
#    set -g fish_color_command $cyan
#    set -g fish_color_keyword $pink
#
#    set -g fish_color_quote $yellow
#    set -g fish_color_redirection $foreground
#    set -g fish_color_end $orange
#    set -g fish_color_error $red
#    set -g fish_color_param $purple
#    set -g fish_color_comment $comment
#    set -g fish_color_selection --background=$selection
#    set -g fish_color_search_match --background=$selection
#    set -g fish_color_operator $green
#    set -g fish_color_escape $pink
#    set -g fish_color_autosuggestion $comment
#    
#    # Completion Pager Colors
#    set -g fish_pager_color_progress $comment
#    set -g fish_pager_color_prefix $cyan
#    set -g fish_pager_color_completion $foreground
#    set -g fish_pager_color_description $comment
#
#
