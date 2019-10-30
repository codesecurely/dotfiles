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
ln -svf $(pwd)/config/vim/colors/molokai.vim ~/.vim/colors/molokai.vim
