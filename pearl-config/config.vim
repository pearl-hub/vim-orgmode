
" This will look for directories containing 'pack/*/start'
set packpath+=$PEARL_PKGVARDIR/plugins

let g:org_todo_keywords = ['TODO', 'BLOCKED', 'IN-PROGRESS', '|', 'DONE']

let g:org_todo_keyword_faces = [['IN-PROGRESS', 'cyan'], ['DONE', 'green'], ['BLOCKED',
      \   [':foreground red', ':weight bold',
      \   ':slant italic', ':decoration underline']]]


filetype plugin indent on

