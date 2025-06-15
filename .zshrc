if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$(brew --prefix)/opt/llvm/bin:$PATH
export LDFLAGS="-L$(brew --prefix)/opt/llvm/lib"
export CPPFLAGS="-I$(brew --prefix)/opt/llvm/include"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

ZSH_DISABLE_COMPFIX="true"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 1

plugins=(git)

source $ZSH/oh-my-zsh.sh

[[ ! -f ${HOME}/.p10k.zsh ]] || source ${HOME}/.p10k.zsh

source ${HOME}/.docker/init-zsh.sh || true # Added by Docker Desktop

GOPATH="${HOME}/go"; export GOPATH;
GOROOT="/usr/local/go"; export GOROOT;
GOBIN="${GOPATH}/bin"; export GOBIN;
GO111MODULE="on"; export GO111MODULE;
PATH="${PATH}:${GOPATH}:${GOROOT}:${GOROOT}/bin:${GOBIN}"; export PATH;

CARGO_HOME="${HOME}/.cargo"; export CARGO_HOME;
CARGO="${HOME}/.cargo/bin/cargo"; export CARGO;

PATH="${PATH}:/usr/local/protoc/bin"; export PATH;

PATH="${HOME}/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="${HOME}/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="${HOME}/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"${HOME}/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=${HOME}/perl5"; export PERL_MM_OPT;

export DOCKER_BUILDKIT=0;
export COMPOSE_DOCKER_CLI_BUILD=0;

[ -f "${HOME}/.ghcup/env" ] && source "${HOME}/.ghcup/env" # ghcup-env

PATH="${PATH}:${HOME}/.local/bin"; export PATH;

PATH="${PATH}:/usr/local/protobuf/bin"; export PATH;

if [ -f $(brew --prefix)/etc/zsh_completion ]; then
. $(brew --prefix)/etc/zsh_completion
fi

# if [ -f '${HOME}/yandex-cloud/path.bash.inc' ]; then source '${HOME}/yandex-cloud/path.bash.inc'; fi

# if [ -f '${HOME}/yandex-cloud/completion.zsh.inc' ]; then source '${HOME}/yandex-cloud/completion.zsh.inc'; fi

# export YC_TOKEN=$(yc iam create-token)
# export YC_CLOUD_ID=$(yc config get cloud-id)
# export YC_FOLDER_ID=$(yc config get folder-id)

LANGUAGE="en"; export LANGUAGE;
