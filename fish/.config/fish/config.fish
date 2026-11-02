if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket
/bin/sh /usr/share/nvm/init-nvm.sh

# Sway starts from this login shell, so its apps inherit this. qt6ct also answers to qt5ct, so this one value covers Qt 5 and Qt 6
set -gx QT_QPA_PLATFORMTHEME qt5ct

if status is-interactive
    starship init fish | source
end


# uv
fish_add_path "/home/sidney/.local/bin"
