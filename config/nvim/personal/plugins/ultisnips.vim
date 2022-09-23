" UltiSnips Snippet keys
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger = "<cr>"
let g:UltiSnipsJumpBackwardTrigger = "<c-cr>" 

let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

nnoremap <leader>U <Cmd>call UltiSnips#RefreshSnippets()<CR>
