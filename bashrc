white=$(tput setaf 188);
blue=$(tput setaf 122);
mint=$(tput setaf 114);
red=$(tput setaf 168);
bold=$(tput bold);
reset=$(tput sgr0);

PS1="\[${bold}\]\n"; # everything after this line is bold
PS1+="\[${mint}\]\u"; # username
#PS1+="\[${white}\] @ ";
#PS1+="\[${red}\]\h"; # hostname
PS1+="\[${white}\] in ";
PS1+="\[${blue}\]\W"; # working directory
PS1+="\n";
PS1+="\[${white}\]> \[${reset}\]"; # '$' symbol 
export PS1;

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# Use vi to open neovim
alias vi="nvim" vim="nvim"
alias .vimrc="vi ~/.config/nvim/init.vim"
alias go="ssh mbocelli@go.eecis.udel.edu"
alias ..="cd .."
alias ...="cd ../.."
