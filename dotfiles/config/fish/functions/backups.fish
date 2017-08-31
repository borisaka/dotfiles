function backup
  tar -cvf ~/.workspace_dirs.tar  ~/.config/fish ~/.config/nvim ~/.ssh
end

function restore
   tar -xvf ~/.workspace_dirs.tar
   git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
   curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   nvim  -c 'PlugInstall' -c 'qa'
end
