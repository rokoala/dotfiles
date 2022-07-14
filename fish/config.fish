set fish_greeting ""

# Fish configs
set -U fisher_path ~/.config/fish/fisher
set -U fish_private_functions ~/.config/fish/private_functions

# Fisher functions
for file in $fisher_path/conf.d/*.fish
    source $file
end

# private functions
for file in $fish_private_functions/*.fish
    source $file
end

# Python configs 
set PATH $PATH $HOME/.local/bin
set PATH $PATH /usr/local/opt/openssl/bin
set PATH $PATH $HOME/Library/Python/3.9/bin
set -U WORKON_HOME $HOME/.virtualenvs
set -U VIRTUALENVWRAPPER_PYTHON /usr/bin/python3
set -U PROJECT_HOME $HOME/Devel

# GO configs
set -U GOPATH $HOME/go
