if set --query fisher_path

    set fish_function_path $fish_function_path[1] $fisher_path/functions $fish_function_path[2..-1]
    set fish_complete_path $fish_complete_path[1] $fisher_path/completions $fish_complete_path[2..-1]

    set --local files $fisher_path/conf.d/*.fish && set --query files[1] && cat $files | source
end
