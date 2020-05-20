#install oh-my-zsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install custom aphrodite theme
mkdir -p ~/.oh-my-zsh/custom/themes/
wget -xqO ~/.oh-my-zsh/custom/themes/aphrodite.zsh-theme https://raw.githubusercontent.com/codesecurely/dotfiles/master/config/zsh/custom/themes/aphrodite.zsh-theme
sed -i.bak 's/^[[:space:]]*ZSH_THEME=.*/ZSH_THEME="aphrodite"/' ~/.zshrc

echo "custom theme installed"

#install the dotfiles
for dotfile in $(pwd)/files/* 
do
    file=$(basename $dotfile)
    if [ -L ~/.$file ]
    then
        rm ~/.$file
    fi
    ln -svf $(pwd)/files/$file ~/.$file
    echo "Installed "$file
done

mkdir -p ~/.vim/colors
mkdir -p ~/.vim/tmp
mkdir -p ~/.config/nvim/colors

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -svf $(pwd)/config/vim/colors/molokai.vim ~/.vim/colors/molokai.vim
ln -svf $(pwd)/config/nvim/colors/molokai.vim ~/.config/nvim/colors/molokai.vim

bash install_nvim.sh
