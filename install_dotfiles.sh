for dotfile in $(pwd)/files/* 
do
    file=$(basename $dotfile)
    if [ -L ~/.$file ]
    then
        rm ~/.$file
    fi
    ln -sv $(pwd)/files/$file ~/.$file
    echo "Installed "$file
done

source ~/.bashrc