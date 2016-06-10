-- Line Nav -- 
0 	begining of
^ 	first non blanck char
$ 	end of
g_ 	last non blanck char

-- Screen Nav --
H 	 go to the first line of current screen.
M 	 go to the middle line of current screen.
L 	 go to the last line of current screen.
ctrl+f 	 jump forward one full screen.
ctrl+b 	 jump backwards one full screen
ctrl+d 	 jump forward (down) a half screen

-- Special Nav -- 
N% 	 go to the Nth percentage line of the file.
NG 	 go to the Nth line of the file.
G 	 go to the end of the file.
`” 	 go to the position where you were in NORMAL MODE while last closing the file.
`^ 	 go to the position where you were in INSERT MODE while last closing the file.
g 	 go to the beginning of the file.

-- Insert Mode - Inserting/Appending text --
i 	start insert mode at cursor
I 	insert at the beginning of the line
a 	append after the cursor
A 	append at the end of the line
o 	open (append) blank line below current line (no need to press return)
O 	open blank line above current line
ea 	append at end of word
Esc 	exit insert mode

-- Word Nav -- 
e 	jump to end of words (punctuation considered words)
E 	jump to end of words (no punctuation)
b 	jump backward by words (punctuation considered words)
B 	jump backward by words (no punctuation)

-- Yank -- 
yy 	yank (copy) a line
2yy 	yank 2 lines
yw 	yank word
y$ 	yank to end of line
p 	put (paste) the clipboard after cursor
P 	put (paste) before cursor
dd 	delete (cut) a line
dw 	delete (cut) the current word
x 	delete (cut) current character

-- Visual --
v 	start visual mode, mark lines, then do command (such as y-yank)
V 	start Linewise visual mode
o 	move to other end of marked area
Ctrl+v 	start visual block mode
O 	move to Other corner of block
aw 	mark a word
ab 	a () block (with braces)
aB 	a {} block (with brackets)
ib 	inner () block
iB 	inner {} block
Esc 	exit visual mode
