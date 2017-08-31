export EDITOR=nvim
set -gx PATH $PATH /usr/local/bin /usr/local/sbin
set -gx DYLD_LIBRARY_PATH $DYLD_LIBRARY_PATH /usr/local/opt/openssl@1.0/include
set -gx CFLAGS  -I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib
# Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-twilight.sh
end
alias python python3
alias pip pip3
alias vi nvim
alias vim nvim
