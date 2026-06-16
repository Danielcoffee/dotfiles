# cai dat install.sh
git clone <repo>
cd dotfiles/setup
chmod +x install.sh
./install.sh

# xuat
pacman -Qqen > packages.txt
pacman -Qqem > packages-aur.txt

# khoi phuc: vao thu muc nay
sudo pacman -S --needed - < packages.txt
yay -S --needed - < packages-aur.txt
