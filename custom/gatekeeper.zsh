function gkc(){
	/usr/local/bin/gk console -p $GK_PROFILE
}

function gk() {
    exe='/usr/local/bin/gk'
    case $1 in 
        dev)      $exe exec -p psaas-engineering-dev ;;
        stage|ci) $exe exec -p psaas-engineering-ci ;;
        prod)     $exe exec -p psaas-engineering-prod ;;
        appl)     $exe exec -p auth0-appliance ;;
        jump)     $exe exec -p appliance-jumphosts ;;
        pubc)     $exe exec -p public-cloud ;;
        *)        $exe $@ ;;
    esac
}

alias gate='gk'
alias gatec='gkc'

#compdef _gatekeeper gate
#compdef _gatekeeper gk

function _gatekeeper {
    local line

    _arguments -C \
        "-h[Show help information]" \
        "--help[Show help information]" \
        "1: :(identity console exec list key gen-config help)" \
        "*::arg:->args"

    case $line[1] in
        identity)
            _gk_identity
        ;;
        console)
            _gk_console
        ;;
        exec)
            _gk_exec
        ;;
        list)
            _gk_list
        ;;
        key)
            _gk_key
        ;;
        gen-config)
            _gk_gen_config
        ;;
        help)
            _gk_help
        ;;
    esac
}

function _gk_identity {
    _arguments \
        "--silent[Dont output anything]"
}

function _gk_console {
    _arguments \
        "--repeat=[Repeat the <message> any number of times]"
}

function _gk_exec {
    _arguments \
        "--repeat=[Repeat the <message> any number of times]"
}

function _gk_key {
    _arguments \
        "--repeat=[Repeat the <message> any number of times]"
}

function _gk_list {
    _arguments \
        "--repeat=[Repeat the <message> any number of times]"
}

function _gk_gen_config {
    _arguments \
        "--repeat=[Repeat the <message> any number of times]"
}

function _gk_gen_config {
    _arguments \
        "--repeat=[Repeat the <message> any number of times]"
}
