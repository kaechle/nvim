Make a backup of your current Neovim files:
# required
mv ~/.config/nvim ~/.config/nvim.bak

# optional but recommended
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

Clone the starter

git clone https://github.com/LazyVim/starter ~/.config/nvim

Remove the .git folder, so you can add it to your own repo later

rm -rf ~/.config/nvim/.git

Start Neovim!

nvim
