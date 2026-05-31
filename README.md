# Dotfiles

My minimal terminal-first development environment.

## Structure

```text
dotfiles/
├─ nvim/
├─ powershell/
├─ git/
├─ scripts/
├─ setup/
└─ README.md
```

---

## Windows setup

Install Scoop first.

Then run:

```powershell
.\setup\windows.ps1
```

---

## Linux setup

```bash
chmod +x setup/linux.sh
./setup/linux.sh
```

---

## Symlinks

### Linux

```bash
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig
```

### PowerShell

Create symbolic link to profile.ps1
