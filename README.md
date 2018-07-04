# VIM quick reminder

## Getting out
- :q
- :q!  quit and don't save changes
- :ZZ quit and don't save changes
- :wq! 
- :w  write changes
- :e, :edit file
- :o, :open file
- :save file

## Getting help
- :help
- :h
- :help command
Exit help with q

## Movement

- h, j, k, l: left, down, up, right
- w, W: word forward, forward real words 
- b, B: word backward, bacwards real words
- e, E: word end forward, backward real word
- 0: move to beginning of line
- ^: move to first word in line
- $: end of the line
- {,}: move paragraphs, blocks
- gg, [[ : begining of file
- G, ]]: end of file
- :$	end of file
- z + Enter : cursor to top
- M: cursor to middle of screen
- Ctrl-f : page forward
- Ctrl-b : page backwards
- :[number] got to line

## Insert mode:
- i: insert mode
- I: insert mode beginning
- a: append next position
- A: append end of the line
- r: replace a character
- R: enter replace mode
- o: add new line down
- O: add new line above

Combinations
- 80i\* + ESC creates 80 lines in a row
- 5o# + ESC creates 5 lines starting with # (comments)

### Replace mode:
- R: replace mode

## Change
- c: change
- cw: change word
- cc: change entire line

- gUw : change word Uppercase
- gUu : change all line Uppercase
- guw : change word lowercase
- guu : change all line lowecase

### Combine
- G : combine lines
- 3G: combine multiple
- g J: combine lines without sares

## Search/Find/Replace
### Search
- f{char}
- F{char} : search backwards
- ; look again forward
- , look again, backwards
- t{char} : as f, one char before
- T{char} : same, backwards
- /{word} : search for word + 
- n repeat search
- N repeat search backwards

- d /search $  : deletes until occurrence.

Search options:
:set is? (incremental search)
:set nois
:set hls? set highlight search
:set nojls
- u
- Ctrl-R : redo
- . : repeat command

- n: repeat
- N: repeat backwards
- \*: search word
- #: search word reverse

### Substitution

- :[range]%s/old/new/[g,i]
- :%s/var/foo/gi

% means **all lines**
[range] can be 1,10
Changing separators:
- :%s#var#foo#g

## Text Objects
Text or code has certain limits like paragraphs and special symbols.
In a text file, common text objects are:
- w: word
- s: sentence
- p: paragraph
- {}: brackets
- []: square brackets
- (): parenthesis
- <>: tags/angular brackets
- ": limits of a string

We can use these objects with commands in order to insert, append, delete text, appplying
this options:
- a: all
- i: inner

<command> + [a|i] + <text-object>
Where commans can be: d, c, r
For example:
- diw: delete a word
- dap: delete all paragraph
- dis: delete inner sentence.
- da]: delete all with brackets
- di]: delete what's inside the brackets
- ci]: change what's inside the brackets
- dat: delete a tag
- dit: delete what's inside the tag

## Macros
Macros are use to recording and creating complex commands that can be invoked with a @
- To start recording a macro use q + letter.
- This will store the macro in @letter.
- Then finish recording typing q again
- To execute just type: @letter

It's a good option to us 0 to beginm then j to finish in the next line.
We can apply a macro to different lines:
number@macro
number,number@macro

We can also store a macro in .vimrc:

let @c='0i# ^[j'

That macro will start the line with a # symbol.
Notice that it's just a sequence of vim commands. For ESC you must use ^[

## Visual Mode
- v: enter visual mode
- V: visual mode in the line
- Ctrl-v: visual mode by blocks

Once you enter visual model, you can select blocks of text mobing with hjkl. 
After that, you can apply c,d,r,c,I,A,J,u,U, <,> commands

### Visual mode + text selections

For example, to apply **indentation** in code files:
- gv>

Some useful settings:
:set shiftwidth=8
:set tabstop=8 (width of tab)
:set noexpandtab  (to use spaces instead of tabs)

:'<,'> s/what/new

Selected area

:'<,'> center [80]
:'<,'> center 40

Example. Add comment to some lines:

Ctrl-v + select with j + i # + ESC

## Commands format:


[number] operation motion
4dw

## Delete/Cut
Everything you cut goes to the **register**

- dw: delete word
- d3w: delete 3 words
- dd: delete lilne
- 3dd, d3d: delete 3 lines
- d$: delete til end of line
- d0: delete to begin of line
- x: delete current char
- X: delete previous char 

## Replace
-r : replace current char
-rw: replace current word

## Yank (Copy)
Everything you copy goes to the **register**
- yy : copy current line
- y5y: copy 5 lines

## Paste
- p: paste below
- P: paste above

## Tabs
Start editor with multiple tabs:

```bash
vim -p file1.txt file2.txt
```
Or

```bash
vim -p *.js
```

- gt, :tabn  move to next tab
- gT, :tabp  move to previous tab
- 1gt, 2gt, ... ngt
- :tabn
- :tabp

- :tabedit file
- :tabfind file
- :tabclose
- :tabonly
- :tabsplit
- :tab ball show all in a tab
- :tabfirst
- :tablast
- :tabn 0,1,2,3

## Registers
Deleted/Cut content is saved in registers. You can reuse those parts.

Unnamed " or numbered "1, "2, "3,... or named: "a, "b, "c,...
" register holds d,c,s,x or y operations.
:reg to see them

Named registers are:
"a, "b, "c,...
"A, "B, "C to append to "a, "b, "c


=======
Commands:
- :tabedit {file}   edit specified file in new tab
- :tabfind {file}   open a new tab with filename given, in current path
- :tabclose         close current tab
- :tabclose {i}     close i-th tab
- :tabonly          close all tabs but current

## Settings
To know all the options available, just do:
:help options-list

### .vimrc file
Each line is a command

```
set ruler 
```

is like doing 

```
:set ruler
```
Comments are set using "
"So, this is a vim comment

in the editor

This is how you set/unset/toggle in general
:set rules
:set noruler
:set ruler! (toggle on/off)

:set path=.,,**

:set nu  : setting line numbers
### set colors
:colorscheme <Tab>
:colorscheme Ctrl-d

Available colors: blue       darkblue   default    delek      desert     elflord    evening    industry   koehler    monokai    morning    murphy     pablo      peachpuff  ron        shine      slate      torte      zellner

Color schemes are stored in $HOME/.vim/color

### bunchi'o settings 
- set history=50
- set showcmd : show incomplete commands
- set wildmenu : shows matching options when writing commands
- set scrolloff=5 : when you do z+ ENTER to move the cursor 5 lines down
- set hlsearch: search with highlight
- set incsearch: incremental search
- set ignorecase: for searches
- set smartcas: ignore previous case if there are uppercase
- set number: line numbers
- set backup: toggles automatic backup
- set bex=CHAR  set character for backup file extension
- set lbr: set linebreak
- set ai: copy indent from previous line
- set si: smart indent, for coding
- set bg=light|dark change background

### map commands

map key funcion
- map <F2> 0i# This is a comment <CR>

## Buffers
An edited file is located in a buffer. Every file you open is stored in a buffer.

```
$ vim file1 file2 file3
 or
$ vim .js
```

Or in vim:
:e file1 file2 file3

Then in vim:
:buffers
:b
:file[!]
:buffers[!]
:ls[!]

- :b + d choose a buffer
- :bn next in buffer
- :bp previous in buffer
- :bf first
- :bl last
- :bn!  changes withous saving!
- :b# previous file
- :qall! quit withous saving
- :wall save all
- :bd delete from buffer
- :badd file   add to buffer
- :%bd deletes all buffers

### Operations in all  buffers
- :bufdo commands for all buffers
- :bufdi set numç
- :bufdo %s/#/@/g
- :bufdo %s/#/@/g | w   change and write!
- :wall

## Windows

## Explorer and NERDTree

By default, vim has an explorer
:E (enter)

NERDTree is a plugin that you could install with pathogen.vim (a plugin organizer) or on its own.
