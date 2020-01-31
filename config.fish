function fish_prompt
	powerline-shell --shell bare $status
end

set fish_greeting

function fish_user_key_bindings
    fzf_key_bindings
end


bind ! __history_previous_command
bind '$' __history_previous_command_arguments

export DEFAULT_FZF_COMMAND='find .'
export FZF_ALT_C_COMMAND='find .'
export FZF_CTRL_T_COMMAND='find .'

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

alias vim="nvim"
alias tm="tmux attach -t"
alias ls="lsd"
export TERM=termite

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/julian/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

