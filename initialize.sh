# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew bundle

# Setup shell
ln -s .zshrc ~/.zshrc;
ln -s tmux.conf ~/tmux.conf

source ~/.zshrc
zplug install
zplug load

# Install neovim + plugins
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

ln -s init.vim ~/.config/nvim/init.vim

nvim --headless +PlugInstall +qall
