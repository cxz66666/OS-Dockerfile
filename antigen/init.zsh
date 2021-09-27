#-- START ZCACHE GENERATED FILE
#-- GENERATED: Sun Sep 26 21:45:16 CST 2021
#-- ANTIGEN v2.2.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/root/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copydir /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/cp /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker-compose /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dotnet /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/encode64 /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/nvm /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/safe-paste /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/screen /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/sudo /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/systemd /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/z /root/.antigen/bundles/zsh-users/zsh-autosuggestions /root/.antigen/bundles/zsh-users/zsh-completions /root/.antigen/bundles/zsh-users/zsh-syntax-highlighting /root/.antigen/bundles/zsh-users/zsh-history-substring-search /root/.antigen/bundles/psprint/zsh-navigation-tools /root/.antigen/bundles/psprint/zsh-cmd-architect /root/.antigen/bundles/romkatv/powerlevel10k) path+=(/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copydir /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/cp /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker-compose /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dotnet /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/encode64 /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/nvm /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/safe-paste /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/screen /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/sudo /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/systemd /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn /root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/z /root/.antigen/bundles/zsh-users/zsh-autosuggestions /root/.antigen/bundles/zsh-users/zsh-completions /root/.antigen/bundles/zsh-users/zsh-syntax-highlighting /root/.antigen/bundles/zsh-users/zsh-history-substring-search /root/.antigen/bundles/psprint/zsh-navigation-tools /root/.antigen/bundles/psprint/zsh-cmd-architect /root/.antigen/bundles/romkatv/powerlevel10k)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/root/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/root/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/root/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/root/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copydir/copydir.plugin.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile/copyfile.plugin.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/cp/cp.plugin.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker-compose/docker-compose.plugin.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dotnet/dotnet.plugin.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/encode64/encode64.plugin.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/nvm/nvm.plugin.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/safe-paste/safe-paste.plugin.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/screen/screen.plugin.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/sudo/sudo.plugin.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/systemd/systemd.plugin.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn/yarn.plugin.zsh';
source '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/z/z.plugin.zsh';
source '/root/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';
source '/root/.antigen/bundles/zsh-users/zsh-completions/zsh-completions.plugin.zsh';
source '/root/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';
source '/root/.antigen/bundles/zsh-users/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh';
source '/root/.antigen/bundles/psprint/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh';
source '/root/.antigen/bundles/psprint/zsh-cmd-architect/zsh-cmd-architect.plugin.zsh';
source '/root/.antigen/bundles/romkatv/powerlevel10k/powerlevel10k.zsh-theme.antigen-compat';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/copydir plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/copyfile plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/cp plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/docker plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/docker-compose plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/dotnet plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/encode64 plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/nvm plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/pip plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/safe-paste plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/screen plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/sudo plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/systemd plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/yarn plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/z plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/zsh-interactive plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true' 'https://github.com/zsh-users/zsh-completions.git / plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/zsh-users/zsh-history-substring-search.git / plugin true' 'https://github.com/psprint/zsh-navigation-tools.git / plugin true' 'https://github.com/psprint/zsh-cmd-architect.git / plugin true' 'https://github.com/romkatv/powerlevel10k.git / theme true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copydir' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copydir/copydir.plugin.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile/copyfile.plugin.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/cp' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/cp/cp.plugin.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker-compose' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker-compose/docker-compose.plugin.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dotnet' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/dotnet/dotnet.plugin.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/encode64' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/encode64/encode64.plugin.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/nvm' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/nvm/nvm.plugin.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/safe-paste' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/safe-paste/safe-paste.plugin.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/screen' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/screen/screen.plugin.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/sudo' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/sudo/sudo.plugin.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/systemd' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/systemd/systemd.plugin.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn/yarn.plugin.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/z' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/z/z.plugin.zsh' '/root/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/zsh-interactive' '/root/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/root/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh' '/root/.antigen/bundles/zsh-users/zsh-completions//' '/root/.antigen/bundles/zsh-users/zsh-completions///zsh-completions.plugin.zsh' '/root/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/root/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh' '/root/.antigen/bundles/zsh-users/zsh-history-substring-search//' '/root/.antigen/bundles/zsh-users/zsh-history-substring-search///zsh-history-substring-search.plugin.zsh' '/root/.antigen/bundles/psprint/zsh-navigation-tools//' '/root/.antigen/bundles/psprint/zsh-navigation-tools///zsh-navigation-tools.plugin.zsh' '/root/.antigen/bundles/psprint/zsh-cmd-architect//' '/root/.antigen/bundles/psprint/zsh-cmd-architect///zsh-cmd-architect.plugin.zsh' '/root/.antigen/bundles/romkatv/powerlevel10k//' '/root/.antigen/bundles/romkatv/powerlevel10k///powerlevel10k.zsh-theme')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE
