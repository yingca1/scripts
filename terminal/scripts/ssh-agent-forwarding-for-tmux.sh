#!/bin/bash
# SSH Agent forwarding with tmux

mkdir -p ~/.ssh

# Create or append to ~/.ssh/rc
cat >> ~/.ssh/rc <<EOL
if [ ! -S ~/.ssh/ssh_auth_sock ] && [ -S "\$SSH_AUTH_SOCK" ]; then
    ln -sf \$SSH_AUTH_SOCK ~/.ssh/ssh_auth_sock
fi
EOL

chmod 600 ~/.ssh/rc

# Append to ~/.tmux.conf
cat >> ~/.tmux.conf <<EOL
# Remove SSH_AUTH_SOCK to disable tmux automatically resetting the variable
set -g update-environment "DISPLAY SSH_ASKPASS SSH_AGENT_PID \\
                             SSH_CONNECTION WINDOWID XAUTHORITY"

# Use a symlink to look up SSH authentication
setenv -g SSH_AUTH_SOCK \$HOME/.ssh/ssh_auth_sock
EOL

echo "Configuration completed!"
