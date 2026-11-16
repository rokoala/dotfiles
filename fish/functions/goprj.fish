function goprj --description 'Escolhe um repo do ghq com fzf e entra nele'
    if not type -q ghq; or not type -q fzf
        echo "goprj precisa de ghq e fzf instalados" >&2
        return 1
    end

    set -l dir (ghq list -p | fzf --height 40% --reverse --prompt 'projeto> ')
    and test -n "$dir"
    and cd $dir
end
