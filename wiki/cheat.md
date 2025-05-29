
# Shortcuts
## Neovim
### General
`:q - :q! - :wq` - Exit, Exit without saving, Exit Saving\
`/ - n - N` - Search, Next / Next backwards\ 
`u - CTRL R` - Undo, Redo\
`dd` - Copy and Delete line\
`x` - Delete char\
`daw` - Delete Word\
### Movement
`h - j - k - l` - Movement\
`100G - gg - G` - Move to 100, to start, to end\ 
`w - e - 0 - $` - Until Beginning/End of next word, Start / End of line\
`Page Up / Down` - Move one page\
### Modes
`ESC` - Leave Mode (Normal)\
`i - a` - Enter Text Mode (Insert) before/after cursor\
`o - O` - Instert new line below/above and Insert Mode\

`v - V` - Visual Mode (Mark text) by char/line\
`y - yw - yy` - Copy marked text, Copy word, Copy line\
`p` - paste text\

### LazyVim
# TODO add config files to .write
#### Setup CMDs inside Neovim
`MasonInstall lua-langauge-server`
#### General
`space` - Leader Key\
`:` - Command Line\
`Leader c m` - Open Meson\
`Leader f f` - Find Files\
`Leader s g` - Search over all Files\
`CTRL n` - Cylce autocomplete\
`z a` - Fold Section\
`K` - LSP Information about what is on cursor\
`]/[ e/w/d` - Cycle Errors/Warnings/Diagnostics\
`Leader u f` - Toogle format on save\
#### Movement
`SHIFT h/l` - Jump between open Windows\
`Leader - / | ` - Split Horizontal / Vertical\
`CTRL h/j/k/l ` - Jump between Splits\
`CTRL Arrowkeys` - Adjust Split size\
`s` - Jump to a word\
`:split :vsplit` - Split editor into 2\
#### Filetree
`Leader e` - Open/Close Filetree\
  `A` / `a` - Add Folder / File\
  `r` / `d` - Rename / Delete\
  `Enter` - Open\ 
  `m` / `c` - Move / Copy to\
`Backspace` - jump to parent dir\
`H` - Toogle hidden files\
#### Neogen
`Leader c n` - Generate Docstring via neogen\
#### Lazy Git
TODO `Leader gg` - Start LazyGit


### NvChad - only leagacy
`Tab - SHIFT Tab` - Switch Buffers\
`SPACE x` - Close buffer\

`SPACE ff` - Find files (used to open Buffers)\
`CTRL n` - Filetree\
    `a` - add File\
`CTRL h/l` - Move into/out Filetree\
`SPACE th` - Set Theme\


## ZSH
`CTRL C` - Interrupt\
`CTRL D` - Exit\
`CTRL R` - Search previous commands\
`CTRL L` - Clear screen

## Alacritty
`CTRL +` - Zoom in\
`CTRL -` - Zoom out\
`CTRL F` - Search Backwards\
`CTRL V` - Paste

`Mark with Mouse` - Copy\
`CTRL Space` - Enter copy Mode\
`v` - Start Selection\
`y` - End Selection\

`Alt v` - Select Word\
`Shift v` - Select Line\
`CTRL v` - Select Block

## Tmux
### Starting
`tmux ls` - list active\
`tmux new -s NAME` - create Session\
`tmux a -t NAME` - attach to Session\
### General
`CTRL B` - Prefix\
`Prefix r` - Reload config\
`Prefix I` - Install tpm plugins\
### Sessions
`Prefix : 'new'` - New Session\
`Prefix $` - Rename Session\
`Prefix (/)` - Cycle Session\
`Prefix d` - Detach Session\
### Windows
`Prefix w` - Preview Sessions + Windows\
`Prefix c` - New Window\
`Prefix ,` - Rename Window\
`Prefix n/p` - Cycle Window\
`Prefix &` - Close Window (or use `CTRL - d`)\
### Panes
`Prefix PgUp/PgDown` - Scroll\
`Prefix %/"` - Split horizontal/vertical\
`Prefix up/down/left/right` - Move Cursor\
`CTRL h/j/k/l` - Move Cursor\
`Prefix 'hold' up/down/left/right` - Resize Pane\
`Prefix x` - Close Pane\
`Prefix z` - Toogle Zoom\

## Linux Basics
### grep "SOME" PATH ///// cat *.txt | grep "SOME"
`-r ` - Search through Directories
`-v` - Invert
`-i` - Case insensitve
`-n ` - Show line number\
`-C 3` - Print 3 lines before + after match\

### find . -name "*.txt"
`-exec grep -l "TEXT" {} +` - Find File by content 
`-iname` - Case insensitve
`-type f/d` - Files or Directories
`-size +1G` - Files bigger then

### fzf
# ! does not find .* files
Search a file on system
`-m` + `TAB` - Search multiple Files
`myf` + `mye` - Custom Alias in my zshrc
