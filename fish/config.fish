# PATH
for p in /usr/local/bin
    if test -d $p
        fish_add_path $p
    end
end

# abbreviations
if status is-interactive
    abbr -a g git
    abbr -a gs git status
    abbr -a gc git commit
    abbr -a v nvim
end

# tmux (sempre por último)
if status is-interactive
    and not set -q TMUX
    and type -q tmux
    exec tmux new-session -A -s main
end
