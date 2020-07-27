# from https://github.com/fish-shell/fish-shell/issues/1363#issuecomment-172298798
# I found it at https://github.com/laughedelic/fish/blob/master/functions/nohist.fish
function nohist --description 'Removes current history for a cleaner demo/screencast.'
    set -l prefix $HOME/.config
    set -l path fish/fish_history

    if set -q XDG_CONFIG_HOME
        set prefix $XDG_CONFIG_HOME
    end

    if test -f $prefix/$path.copy
        mv $prefix/$path.copy $prefix/$path
    else
        cp -f $prefix/$path $prefix/$path.copy
        echo y | history --clear > /dev/null
    end
end