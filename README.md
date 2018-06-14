# VIM quick reminder

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
- z + Enter : cursor to top
- M: cursor to middle of screen

## Insert mode:
- i: insert mode
- I: insert mode beginning
- a: append next position
- A: append end of the line
- o: add new line down
- O: add new line above

## Undo
- u
- Ctrl-R : redo

## Delete/Cut
- dw: delete word
- dd: delete lilne
- 3dd, d3d: delete 3 lines
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

