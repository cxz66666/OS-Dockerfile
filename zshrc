# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$PATH:/opt/riscv/bin
export hostip=$(cat /etc/resolv.conf |grep -oP '(?<=nameserver\ ).*')
alias setss='export https_proxy="http://${hostip}:7890";export http_proxy="http://${hostip}:7890";'

fastfile_var_prefix='@'
source ~/.antigen.zsh

antigen use oh-my-zsh

#antigen bundle archlinux
antigen bundle copydir
antigen bundle copyfile
antigen bundle cp
antigen bundle docker
antigen bundle docker-compose
antigen bundle dotnet
antigen bundle encode64
#antigen bundle fastfile
antigen bundle nvm
antigen bundle pip
antigen bundle safe-paste
antigen bundle screen
antigen bundle sudo
antigen bundle systemd
antigen bundle yarn
antigen bundle z
antigen bundle zsh-interactive

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle psprint/zsh-navigation-tools
antigen bundle psprint/zsh-cmd-architect

antigen theme romkatv/powerlevel10k
#antigen theme robbyrussell
antigen apply

# aliases and functions
#source ~/.zsh_aliases

setopt extendedglob                                             # Allow globbing with re *
setopt nocaseglob                                               # Case insensitive globbing
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt appendhistory                                            # Immediatly append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
zmodload zsh/terminfo
HISTSIZE=10000
SAVEHIST=5000

bindkey -e
bindkey '^[[7~' beginning-of-line                               # Home key
bindkey '^[[H' beginning-of-line                                # Home key
if [[ "${terminfo[khome]}" != "" ]]; then
  bindkey "${terminfo[khome]}" beginning-of-line                # [Home] - Go to beginning of line
fi
bindkey '^[[8~' end-of-line                                     # End key
bindkey '^[[F' end-of-line                                     # End key
if [[ "${terminfo[kend]}" != "" ]]; then
  bindkey "${terminfo[kend]}" end-of-line                       # [End] - Go to end of line
fi
bindkey '^[[2~' overwrite-mode                                  # Insert key
bindkey '^[[3~' delete-char                                     # Delete key
bindkey '^[[C'  forward-char                                    # Right key
bindkey '^[[D'  backward-char                                   # Left key
bindkey '^[[5~' history-beginning-search-backward               # Page up key
bindkey '^[[6~' history-beginning-search-forward                # Page down key

# Navigate words with ctrl+arrow keys
bindkey '^[Oc' forward-word                                     #
bindkey '^[Od' backward-word                                    #
bindkey '^[[1;5D' backward-word                                 #
bindkey '^[[1;5C' forward-word                                  #
bindkey '^H' backward-kill-word                                 # delete previous word with ctrl+backspace
bindkey '^[[Z' undo                                             # Shift+tab undo last action

# History substring search
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up			
bindkey '^[[B' history-substring-search-down

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
