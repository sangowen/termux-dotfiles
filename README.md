# termux-dotfiles

[demo](https://imgur.com/BEVrWdu.mp4)

Mostly I use a single termux tab to open tmux, and launch everything in that tmux.

## Applications
```
zsh      - shell
nvim     - file editor, makrdown/vimwiki
ranger   - file manager
newsboat - RSS subscription (news, blog, youtube, reddit, github)
```
## Usage

After [installation](#Install), use ```tmux-launcher``` in zsh to start

### Major Use Cases
Personally, I use termux to:
1. Pull and test code (golang/shell scripts mostly); fix bugs and commit.
2. Login to remote machines (zsh → SSH)
3. Write some quick markdown notes (vimwiki + markdown plugins) and render in browser
4. Preview RSS feeds and open them in browser/newpipe/reddit app

### Launcher / Window switching
1. termux widget shortcuts  (on android launcher screen)
2. bin/tmux-launcher script (in tmux)
3. touch/click on tmux tab  (only for switching)
4. ranger                   (open files in vim or start zsh)

### Workflow
I use termux-widget for shortcuts, corresponding to the apps listed above. Apps can be opened and closed in any order, and their tmux tabs will be put in a pre-defined order.
The shortcut scripts have to run in the foreground to bring Termux app to foreground with a new tab. They finishes instantly so termux switches back to the last tab which is tmux. The tmux tab/window would have been changed to the desired app already.


## Install

### android apps

Before you begin, install termux:style.
Choose any powerline font as you wish; personally I use Meslo.
In termux, long press and release → More... → Style → CHOOSE FONT → Meslo.

### termux packages
```
pkg install git tmux neovim zsh ranger newsboat fzf fasd bat curl
```

Change zsh to your default shell:
```
chsh -s zsh
```
exit, open termux again and you should be in zsh instead of bash

### oh-my-zsh & plugins
[oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh#via-curl) should be installed before copying the dotfiles.
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

[fast-syntax-highlighting](https://github.com/zdharma/fast-syntax-highlighting#oh-my-zsh):
```
git clone https://github.com/zdharma/fast-syntax-highlighting.git \
  ~ZSH_CUSTOM/plugins/fast-syntax-highlighting
```
[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh):
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
zsh plugins can slow down your shell prompt a bit; consider removing them from .zshrc plugins=(...) if it is too slow for you.

(I cannot find the source for zle-vi-visual at the mean while.  I think it was made back in the days when zsh didn't support vi visual mode or text objects properly. I will find a way to upload it or just remove it from .zshrc.)

### copy the dotfiles
If you already have any of the dotfiles, just backup or merge the files before continuing.
```
git clone https://github.com/sangowen/termux-dotfiles
cd termux-dotfiles/
cp -r .config .fzf .newsboat .shortcuts .termux .tmux-themepack .tmux.conf .zshrc .profile bin ../

cp .oh-my-zsh/themes/gruvbox.zsh-theme ~/.oh-my-zsh/themes/gruvbox.zsh-theme 
cd data/data/com.termux/files/usr/etc
cp zprofile profile zshrc /data/data/com.termux/files/usr/etc/
```

## misc
general:
1. vi key binding for most of the components.

tmux:
1. Other than the ```ctrl+b``` default prefix, I set backtick as my secondary prefix. The backtick key can then be put in extra-keys.

ranger:
1. s for zsh in current folder
2. → or <CR> on files to edit in neovim
3. z<Space> is fasd, jump around recently/frequently visited folers
4. bat for file preview

zsh:
1. qq for quit
