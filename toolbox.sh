sudo dnf install -y zsh zsh-autosuggestions zsh-syntax-highlighting

mkdir -p $HOME/.local/bin
sudo curl -s https://ohmyposh.dev/install.sh | bash -s -- -d $HOME/.local/bin

PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash'
PROFILE=/dev/null bash -c 'curl -fsSL https://get.pnpm.io/install.sh | env PNPM_VERSION=10.0.0-alpha.4 sh -'
PROFILE=/dev/null bash -c 'curl -fsSL https://bun.sh/install | bash'
PROFILE=/dev/null bash -c 'curl -fsSL https://deno.land/install.sh | sh'

sudo dnf -y install gh tmux podman

sudo dnf -y install https://rpms.remirepo.net/fedora/remi-release-40.rpm
sudo dnf -y install php php-mysqlnd

cp ./.zshrc $HOME
oh-my-posh init zsh --config /home/kaleb/.cache/oh-my-posh/themes/catppuccin_mocha.omp.json | tee -a $HOME/.zshrc

echo -e "\n\nif [ -e "/usr/bin/zsh" ]; then exec zsh; fi" >> ~/.bashrc

exec zsh