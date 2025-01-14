#!/bin/bash
# https://wiki.archlinux.org/index.php/XDG_Base_Directory
# https://web.archive.org/web/20180827160401/plus.google.com/+RobPikeTheHuman/posts/R58WgWwN9jp
#set -eo pipefail

mkdir -p "${XDG_DATA_HOME}/bash"
mkdir -p "${XDG_STATE_HOME}/bash"
mkdir -p "${XDG_DATA_HOME}/tig"
mkdir -p "${XDG_DATA_HOME}/less"
mkdir -p "${XDG_DATA_HOME}/gradle"
mkdir -p "${XDG_CACHE_HOME}/ccache"
mkdir -p "${XDG_CACHE_HOME}/ipython"
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
#[[ ! -f "${XDG_DATA_HOME}/bash-completion/completions/cmake" ]] && ln -s /snap/cmake/current/share/bash-completion/completions/* "${XDG_DATA_HOME}/bash-completion/completions"

declare -rx CPM_SOURCE_CACHE="${XDG_CACHE_HOME}/CPM"
declare -rx PYTHONPYCACHEPREFIX="${XDG_CACHE_HOME}/python"

declare -rx          HISTFILE="${XDG_STATE_HOME}/bash/history"
declare -rx NODE_REPL_HISTORY="${XDG_STATE_HOME}/.node_repl_history"
declare -rx       GDBHISTFILE="${XDG_STATE_HOME}/gdb/history"
declare -rx    PYTHON_HISTORY="${XDG_STATE_HOME}/python/history"
alias wget='\wget --hsts-file="${XDG_CACHE_HOME}/wget-hsts"'
declare -rx    SQLITE_HISTORY="${XDG_STATE_HOME}/sqlite_history"

declare -rx       INPUTRC="${XDG_CONFIG_HOME}/readline/inputrc"
declare -rx RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME}/grep/ripgrep"
declare -rx       VIMINIT='source $XDG_CONFIG_HOME/vim/main.vim' # annoyingly, the ${} form gets interpreted (and choked-upon) by CMake Tools for reasons beyond my comprehension and patience.
declare -rx    TIGRC_USER="${XDG_CONFIG_HOME}/git/tigrc_colorstrings"
declare -rx DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"
#declare -rx        WGETRC="${XDG_CONFIG_HOME}/wgetrc" # currently not used
#declare -rx PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/startup.py"
              PYTHONHOME+=":${XDG_CONFIG_HOME}/python/"
declare -rx NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"
declare -rx CONAN_USER_HOME="${XDG_CONFIG_HOME}"

declare -rx GRADLE_USER_HOME="${XDG_DATA_HOME}/gradle"
declare -rx   CARGO_HOME="${XDG_DATA_HOME}/cargo"
#[[ -f "${XDG_DATA_HOME}/emsdk/emsdk_env.sh" ]] && source "${XDG_DATA_HOME}/emsdk/emsdk_env.sh"
declare -rx RUSTUP_HOME="${XDG_DATA_HOME}/rustup"

#set +eo pipefail
