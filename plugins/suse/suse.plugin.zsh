#Alias for Zypper according to the official Zypper's alias

#Main commands
<<<<<<< HEAD
alias z='sudo zypper' #call zypper
alias zh='sudo zypper -h' #print help
alias zhse='sudo zypper -h se' #print help for the search command
alias zlicenses='sudo zypper licenses' #prints a report about licenses and EULAs of installed packages
alias zps='sudo zypper ps' #list process using deleted files
alias zshell='sudo zypper shell' #open a zypper shell session
alias zsource-download='sudo zypper source-download' #download source rpms for all installed packages
alias ztos='sudo zypper tos' #shows  the  ID string of the target operating system
alias zvcmp='sudo zypper vcmp' #tell whether version1 is older or newer than version2
=======
alias z='sudo zypper'
alias zh='zypper -h'
alias zhse='zypper -h se'
alias zlicenses='zypper licenses'
alias zps='sudo zypper ps'
alias zshell='sudo zypper shell'
alias zsource-download='sudo zypper source-download'
alias ztos='zypper tos'
alias zvcmp='zypper vcmp'
>>>>>>> origin/master

#Packages commands
alias zin='sudo zypper in' #install packages
alias zinr='sudo zypper inr' #install newly added packages recommended by already installed ones
alias zrm='sudo zypper rm' #remove packages
alias zsi='sudo zypper si' #install source of a package
alias zve='sudo zypper ve' #verify dependencies of installed packages

#Updates commands
<<<<<<< HEAD
alias zdup='sudo zypper dup' #upgrade packages
alias zlp='sudo zypper lp' #list necessary patchs
alias zlu='sudo zypper lu' #list updates
alias zpchk='sudo zypper pchk' #check for patches
alias zup='sudo zypper up' #update packages
alias zpatch='sudo zypper patch' #install patches

#Request commands
alias zif='sudo zypper if' #display info about packages
alias zpa='sudo zypper pa' #list packages
alias zpatch-info='sudo zypper patch-info' #display info about patches
alias zpattern-info='sudo zypper patch-info' #display info about patterns
alias zproduct-info='sudo zypper patch-info' #display info about products
alias zpch='sudo zypper pch' #list all patches
alias zpd='sudo zypper pd' #list products
alias zpt='sudo zypper pt' #list patterns
alias zse='sudo zypper se' #search for packages
alias zwp='sudo zypper wp' #list all packages providing the specified capability

#Repositories commands
alias zar='sudo zypper ar' #add a repository
alias zcl='sudo zypper clean' #clean cache
alias zlr='sudo zypper lr' #list repositories
alias zmr='sudo zypper mr' #modify repositories
alias znr='sudo zypper nr' #rename repositories (for the alias only)
alias zref='sudo zypper ref' #refresh repositories
alias zrr='sudo zypper rr' #remove repositories

#Services commands
alias zas='sudo zypper as' #adds a service specified by URI to the system
alias zms='sudo zypper ms' #modify properties of specified services
alias zrefs='sudo zypper refs' #refreshing a service mean executing the service's special task
alias zrs='sudo zypper rs' #remove specified repository index service from the system
alias zls='sudo zypper ls' #list services defined on the system

#Package Locks Management commands
alias zal='sudo zypper al' #add a package lock
alias zcl='sudo zypper cl' #Remove unused locks
alias zll='sudo zypper ll' #list currently active package locks
alias zrl='sudo zypper rl' #remove specified package lock
=======
alias zdup='sudo zypper dup'
alias zlp='zypper lp'
alias zlu='zypper lu'
alias zpchk='sudo zypper pchk'
alias zup='sudo zypper up'
alias zpatch='sudo zypper patch'

#Request commands
alias zif='zypper if'
alias zpa='zypper pa'
alias zpatch-info='zypper patch-info'
alias zpattern-info='zypper pattern-info'
alias zproduct-info='zypper product-info'
alias zpch='zypper pch'
alias zpd='zypper pd'
alias zpt='zypper pt'
alias zse='zypper se'
alias zwp='zypper wp'

#Repositories commands
alias zar='sudo zypper ar'
alias zcl='sudo zypper clean'
alias zlr='zypper lr'
alias zmr='sudo zypper mr'
alias znr='sudo zypper nr'
alias zref='sudo zypper ref'
alias zrr='sudo zypper rr'

#Services commands
alias zas='sudo zypper as'
alias zms='sudo zypper ms'
alias zrefs='sudo zypper refs'
alias zrs='sudo zypper rs'
alias zls='zypper ls'

#Package Locks Management commands
alias zal='sudo zypper al'
alias zcl='sudo zypper cl'
alias zll='zypper ll'
alias zrl='sudo zypper rl'
>>>>>>> origin/master
