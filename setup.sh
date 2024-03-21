#!/bin/sh

NVIMLOC="~/.config/nvim"
TMUXLOC="~/.tmux.conf"
BACKUPLOC="~/dotfiles.bak/$(date +%s)"

mkdir -p $BACKUPLOC

if [ -d "$NVIMLOC" ]; then
    echo "Backing up nvim config to $BACKUPLOC"
    mv $NVIMLOC $BACKUPLOC/nvim
fi

echo "Installing nvim config"
cp -r ./nvim $NVIMLOC

if [ -d "$TMUXLOC" ]; then
    echo "Backing up tmux config to $BACKUPLOC"
    mv $TMUXLOC $BACKUPLOC/.tmux.conf
fi

echo "Installing tmux config"
cp -r ./tmux.conf $TMUXLOC


