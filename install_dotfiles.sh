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
source ~/.bashrc
