set fish_greeting ""
set -U fisher_path ~/.config/fish/fisher
set -U fish_private_functions ~/.config/fish/private_functions

for file in $fish_private_functions/*.fish
    source $file
end
