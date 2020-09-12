# termux-dotfiles

Mostly I use a single termux tab to open tmux, and launch everything in that tmux.

## Applications:
```
zsh      - shell
nvim     - file editor, makrdown/vimwiki
ranger   - file manager
newsboat - RSS subscription (news, blog, youtube, reddit, github)
```

## Major Use Cases
Personally, I use termux to:
1. Pull and test code (golang/shell scripts mostly); fix bugs and commit.
2. Login to remote machines (zsh → SSH)
3. Write some quick markdown notes (vimwiki + markdown plugins) and render in browser
4. Preview RSS feeds and open them in browser/newpipe/reddit app

## Launcher / Window switching
1. termux widget shortcuts  (on android launcher screen)
2. bin/tmux-launcher script (in tmux)
3. touch/click on tmux tab  (only for switching)
4. ranger                   (open files in vim or start zsh)

## Workflow
I use termux-widget for shortcuts, corresponding to the apps listed above. Apps can be opened and closed in any order, and their tmux tabs will be put in a pre-defined order.
The shortcut scripts have to run in the foreground to bring Termux app to foreground with a new tab. They finishes instantly so termux switches back to the last tab which is tmux. The tmux tab/window would have been changed to the desired app already.


(I will add a video and more description later)
(default config files from installation or officially supported gruvbox theme files will not be included)
