#
# Aliases
#

alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

<<<<<<< HEAD
# Only run if tmux is actually installed
if which tmux &> /dev/null
	then
	# Configuration variables
	#
	# Automatically start tmux
	[[ -n "$ZSH_TMUX_AUTOSTART" ]] || ZSH_TMUX_AUTOSTART=false
	# Only autostart once. If set to false, tmux will attempt to
	# autostart every time your zsh configs are reloaded.
	[[ -n "$ZSH_TMUX_AUTOSTART_ONCE" ]] || ZSH_TMUX_AUTOSTART_ONCE=true
	# Automatically connect to a previous session if it exists
	[[ -n "$ZSH_TMUX_AUTOCONNECT" ]] || ZSH_TMUX_AUTOCONNECT=true
	# Automatically close the terminal when tmux exits
	[[ -n "$ZSH_TMUX_AUTOQUIT" ]] || ZSH_TMUX_AUTOQUIT=$ZSH_TMUX_AUTOSTART
	# Set term to screen or screen-256color based on current terminal support
	[[ -n "$ZSH_TMUX_FIXTERM" ]] || ZSH_TMUX_FIXTERM=true
	# Set '-CC' option for iTerm2 tmux integration
	[[ -n "$ZSH_TMUX_ITERM2" ]] || ZSH_TMUX_ITERM2=false
	# The TERM to use for non-256 color terminals.
	# Tmux states this should be screen, but you may need to change it on
	# systems without the proper terminfo
	[[ -n "$ZSH_TMUX_FIXTERM_WITHOUT_256COLOR" ]] || ZSH_TMUX_FIXTERM_WITHOUT_256COLOR="screen"
	# The TERM to use for 256 color terminals.
	# Tmux states this should be screen-256color, but you may need to change it on
	# systems without the proper terminfo
	[[ -n "$ZSH_TMUX_FIXTERM_WITH_256COLOR" ]] || ZSH_TMUX_FIXTERM_WITH_256COLOR="screen-256color"

=======
# CONFIGURATION VARIABLES
# Automatically start tmux
: ${ZSH_TMUX_AUTOSTART:=false}
# Only autostart once. If set to false, tmux will attempt to
# autostart every time your zsh configs are reloaded.
: ${ZSH_TMUX_AUTOSTART_ONCE:=true}
# Automatically connect to a previous session if it exists
: ${ZSH_TMUX_AUTOCONNECT:=true}
# Automatically close the terminal when tmux exits
: ${ZSH_TMUX_AUTOQUIT:=$ZSH_TMUX_AUTOSTART}
# Set term to screen or screen-256color based on current terminal support
: ${ZSH_TMUX_FIXTERM:=true}
# Set '-CC' option for iTerm2 tmux integration
: ${ZSH_TMUX_ITERM2:=false}
# The TERM to use for non-256 color terminals.
# Tmux states this should be screen, but you may need to change it on
# systems without the proper terminfo
: ${ZSH_TMUX_FIXTERM_WITHOUT_256COLOR:=screen}
# The TERM to use for 256 color terminals.
# Tmux states this should be screen-256color, but you may need to change it on
# systems without the proper terminfo
: ${ZSH_TMUX_FIXTERM_WITH_256COLOR:=screen-256color}
# Set the configuration path
: ${ZSH_TMUX_CONFIG:=$HOME/.tmux.conf}
# Set -u option to support unicode
: ${ZSH_TMUX_UNICODE:=false}

# Determine if the terminal supports 256 colors
if [[ $terminfo[colors] == 256 ]]; then
  export ZSH_TMUX_TERM=$ZSH_TMUX_FIXTERM_WITH_256COLOR
else
  export ZSH_TMUX_TERM=$ZSH_TMUX_FIXTERM_WITHOUT_256COLOR
fi

# Set the correct local config file to use.
if [[ "$ZSH_TMUX_ITERM2" == "false" && -e "$ZSH_TMUX_CONFIG" ]]; then
  export ZSH_TMUX_CONFIG
  export _ZSH_TMUX_FIXED_CONFIG="${0:h:a}/tmux.extra.conf"
else
  export _ZSH_TMUX_FIXED_CONFIG="${0:h:a}/tmux.only.conf"
fi
>>>>>>> origin/master

	# Get the absolute path to the current directory
	local zsh_tmux_plugin_path="$(cd "$(dirname "$0")" && pwd)"

<<<<<<< HEAD
	# Determine if the terminal supports 256 colors
	if [[ `tput colors` == "256" ]]
	then
		export ZSH_TMUX_TERM=$ZSH_TMUX_FIXTERM_WITH_256COLOR
	else
		export ZSH_TMUX_TERM=$ZSH_TMUX_FIXTERM_WITHOUT_256COLOR
	fi
=======
  local -a tmux_cmd
  tmux_cmd=(command tmux)
  [[ "$ZSH_TMUX_ITERM2" == "true" ]] && tmux_cmd+=(-CC)
  [[ "$ZSH_TMUX_UNICODE" == "true" ]] && tmux_cmd+=(-u)
>>>>>>> origin/master

	# Set the correct local config file to use.
    if [[ "$ZSH_TMUX_ITERM2" == "false" ]] && [[ -f $HOME/.tmux.conf || -h $HOME/.tmux.conf ]]
	then
		#use this when they have a ~/.tmux.conf
		export _ZSH_TMUX_FIXED_CONFIG="$zsh_tmux_plugin_path/tmux.extra.conf"
	else
		#use this when they don't have a ~/.tmux.conf
		export _ZSH_TMUX_FIXED_CONFIG="$zsh_tmux_plugin_path/tmux.only.conf"
	fi

<<<<<<< HEAD
	# Wrapper function for tmux.
	function _zsh_tmux_plugin_run()
	{
		# We have other arguments, just run them
		if [[ -n "$@" ]]
		then
			\tmux $@
		# Try to connect to an existing session.
		elif [[ "$ZSH_TMUX_AUTOCONNECT" == "true" ]]
		then
			\tmux `[[ "$ZSH_TMUX_ITERM2" == "true" ]] && echo '-CC '` attach || \tmux `[[ "$ZSH_TMUX_ITERM2" == "true" ]] && echo '-CC '` `[[ "$ZSH_TMUX_FIXTERM" == "true" ]] && echo '-f '$_ZSH_TMUX_FIXED_CONFIG` new-session
			[[ "$ZSH_TMUX_AUTOQUIT" == "true" ]] && exit
		# Just run tmux, fixing the TERM variable if requested.
		else
			\tmux `[[ "$ZSH_TMUX_ITERM2" == "true" ]] && echo '-CC '` `[[ "$ZSH_TMUX_FIXTERM" == "true" ]] && echo '-f '$_ZSH_TMUX_FIXED_CONFIG`
			[[ "$ZSH_TMUX_AUTOQUIT" == "true" ]] && exit
		fi
	}
=======
  # If failed, just run tmux, fixing the TERM variable if requested.
  if [[ $? -ne 0 ]]; then
    if [[ "$ZSH_TMUX_FIXTERM" == "true" ]]; then
      tmux_cmd+=(-f "$_ZSH_TMUX_FIXED_CONFIG")
    elif [[ -e "$ZSH_TMUX_CONFIG" ]]; then
      tmux_cmd+=(-f "$ZSH_TMUX_CONFIG")
    fi
    $tmux_cmd new-session
  fi
>>>>>>> origin/master

	# Use the completions for tmux for our function
	compdef _tmux _zsh_tmux_plugin_run

	# Alias tmux to our wrapper function.
	alias tmux=_zsh_tmux_plugin_run

	# Autostart if not already in tmux and enabled.
	if [[ ! -n "$TMUX" && "$ZSH_TMUX_AUTOSTART" == "true" ]]
	then
		# Actually don't autostart if we already did and multiple autostarts are disabled.
		if [[ "$ZSH_TMUX_AUTOSTART_ONCE" == "false" || "$ZSH_TMUX_AUTOSTARTED" != "true" ]]
		then
			export ZSH_TMUX_AUTOSTARTED=true
			_zsh_tmux_plugin_run
		fi
	fi
else
	print "zsh tmux plugin: tmux not found. Please install tmux before using this plugin."
fi
