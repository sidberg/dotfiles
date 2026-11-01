if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket
/bin/sh /usr/share/nvm/init-nvm.sh

if status is-interactive
    starship init fish | source
end


# uv
fish_add_path "/home/sidney/.local/bin"
