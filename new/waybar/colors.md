#f7768e 	This keyword, HTML elements, Regex group symbol, CSS units, Terminal Red
#ff9e64 #ff9e64 	Number and Boolean constants, Language support constants
#e0af68 #e0af68 	Function parameters, Regex character sets, Terminal Yellow
#cfc9c2 #cfc9c2 	Parameters inside functions (semantic highlighting only)
#9ece6a #9ece6a 	Strings, CSS class names
#73daca #73daca 	Object literal keys, Markdown links, Terminal Green
#b4f9f8 #b4f9f8 	Regex literal strings
#2ac3de #2ac3de 	Language support functions, CSS HTML elements
#7dcfff #7dcfff 	Object properties, Regex quantifiers and flags, Markdown headings, Terminal Cyan, Markdown code, Import/export keywords
#7aa2f7 #7aa2f7 	Function names, CSS property names, Terminal Blue
#bb9af7 #bb9af7 	Control Keywords, Storage Types, Regex symbols and operators, HTML Attributes, Terminal Magenta
#c0caf5 #c0caf5 	Variables, Class names, Terminal White
#a9b1d6 #a9b1d6 	Editor Foreground
#9aa5ce #9aa5ce 	Markdown Text, HTML Text
#565f89 #565f89 	Comments
#414868 #414868 	Terminal Black
#24283b #24283b 	Editor Background (Storm)
#1a1b26 #1a1b26

if s:configuration.style ==# 'night'
  let s:palette = {
        \ 'black':      ['#06080a',   '237',  'DarkGrey'],
        \ 'bg0':        ['#1a1b26',   '235',  'Black'],
        \ 'bg1':        ['#232433',   '236',  'DarkGrey'],
        \ 'bg2':        ['#2a2b3d',   '236',  'DarkGrey'],
        \ 'bg3':        ['#32344a',   '237',  'DarkGrey'],
        \ 'bg4':        ['#3b3d57',   '237',  'Grey'],
        \ 'bg_red':     ['#ff7a93',   '203',  'Red'],
        \ 'diff_red':   ['#803d49',   '52',   'DarkRed'],
        \ 'bg_green':   ['#b9f27c',   '107',  'Green'],
        \ 'diff_green': ['#618041',   '22',   'DarkGreen'],
        \ 'bg_blue':    ['#7da6ff',   '110',  'Blue'],
        \ 'diff_blue':  ['#3e5380',   '17',   'DarkBlue'],
        \ 'fg':         ['#a9b1d6',   '250',  'White'],
        \ 'red':        ['#F7768E',   '203',  'Red'],
        \ 'orange':     ['#FF9E64',   '215',  'Orange'],
        \ 'yellow':     ['#E0AF68',   '179',  'Yellow'],
        \ 'green':      ['#9ECE6A',   '107',  'Green'],
        \ 'blue':       ['#7AA2F7',   '110',  'Blue'],
        \ 'purple':     ['#ad8ee6',   '176',  'Magenta'],
        \ 'grey':       ['#444B6A',   '246',  'LightGrey'],
        \ 'none':       ['NONE',      'NONE', 'NONE']
        \ }
elseif s:configuration.style ==# 'storm'
  let s:palette = {
        \ 'black':      ['#06080a',   '237',  'DarkGrey'],
        \ 'bg0':        ['#24283b',   '235',  'Black'],
        \ 'bg1':        ['#282d42',   '236',  'DarkGrey'],
        \ 'bg2':        ['#2f344d',   '236',  'DarkGrey'],
        \ 'bg3':        ['#333954',   '237',  'DarkGrey'],
        \ 'bg4':        ['#3a405e',   '237',  'Grey'],
        \ 'bg_red':     ['#ff7a93',   '203',  'Red'],
        \ 'diff_red':   ['#803d49',   '52',   'DarkRed'],
        \ 'bg_green':   ['#b9f27c',   '107',  'Green'],
        \ 'diff_green': ['#618041',   '22',   'DarkGreen'],
        \ 'bg_blue':    ['#7da6ff',   '110',  'Blue'],
        \ 'diff_blue':  ['#3e5380',   '17',   'DarkBlue'],
        \ 'fg':         ['#a9b1d6',   '250',  'White'],
        \ 'red':        ['#F7768E',   '203',  'Red'],
        \ 'orange':     ['#FF9E64',   '215',  'Orange'],
        \ 'yellow':     ['#E0AF68',   '179',  'Yellow'],
        \ 'green':      ['#9ECE6A',   '107',  'Green'],
        \ 'blue':       ['#7AA2F7',   '110',  'Blue'],
        \ 'purple':     ['#ad8ee6',   '176',  'Magenta'],
        \ 'grey':       ['#444B6A',   '246',  'LightGrey'],
        \ 'none':       ['NONE',      'NONE', 'NONE']
        \ }
endif
