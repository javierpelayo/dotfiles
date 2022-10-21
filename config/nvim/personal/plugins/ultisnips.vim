" UltiSnips Snippet keys
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger = "qw"
let g:UltiSnipsJumpBackwardTrigger = "<c-q>" 

let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

nnoremap <leader>U <Cmd>call UltiSnips#RefreshSnippets()<CR>
