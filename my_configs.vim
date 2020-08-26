" Set extra options when running in GUI mode
if has("gui_running")
    set lines=45 columns=100
    set guifont=Monaco:h9
endif

" set line number
set nu

"**************************************************************************
"new file title
"**************************************************************************
"creat new .c/.cpp/.h/.sh/.java/... file,auto insert file header
autocmd BufNewfile *.cpp,*.[ch],*.sh,*java exec ":call SetTitle()"
"define function SetTitle, auto insert file header
func SetTitle()
    "if file type is *.sh
    if &filetype == 'sh'
        call setline(1, "\##########################################################")
        call append(line("."), "\# File Name: ".expand("%"))
        call append(line(".")+1, "\# Author: PureTeufel")
        call append(line(".")+2, "\# Mail: PureTeufel@163.com")
        call append(line(".")+3, "\# Created Time: ".strftime("%c"))
        call append(line(".")+4, "\##########################################################")
        call append(line(".")+5, "\#!/bin/bash")
        call append(line(".")+6, "")
    else
        call setline(1, "/**********************************************************")
        call append(line("."), " > File Name: ".expand("%"))
        call append(line(".")+1, " > Author: PureTeufel")
        call append(line(".")+2, " > Mail: PureTeufel@163.com")
        call append(line(".")+3, " > Created Time: ".strftime("%c"))
        call append(line(".")+4, "**********************************************************/")
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include <iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include <stdio.h>")
        call append(line(".")+7, "")
    endif
    "if &filetype == 'java'
    "    call append(line(".")+6, "Public class ".expand("%"))
    "    call append(line(".")+7, "")
    "endif
    " After creating the new file, auto position file end
    autocmd BufNewFile * normal G
endfunc
