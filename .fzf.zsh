# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/jordan.spangenberg/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/jordan.spangenberg/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/jordan.spangenberg/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/jordan.spangenberg/.fzf/shell/key-bindings.zsh"
