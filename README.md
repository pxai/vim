# VIM quick reminder

## Getting out
- :q
- :q!  quit and don't save changes
- :ZZ quit and don't save changes
- :wq! 
- :e, :edit file

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
TODO check.
- 80i\* creates 80 lines in a row
- 5o# creates 5 lines starting with # (comments)

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


## Undo
- u
- Ctrl-R : redo
- . : repeat command

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

## Registers
Deleted/Cut content is saved in registers. You can reuse those parts.

Unnamed " or numbered "1, "2, "3,... or named: "a, "b, "c,...
" register holds d,c,s,x or y operations.
:reg to see them

Named registers are:
"a, "b, "c,...
"A, "B, "C to append to "a, "b, "c



## Settings
:set rules
:set noruler
:set ruler! (toggle on/off)

### set colors
:colorscheme <Tab>
:colorscheme Ctrl-d

Available colors: blue       darkblue   default    delek      desert     elflord    evening    industry   koehler    monokai    morning    murphy     pablo      peachpuff  ron        shine      slate      torte      zellner
