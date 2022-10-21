inoremap <c-f> <esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<cr><cr>:w<cr>

nnoremap <c-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<cr><cr>:redraw!<cr>

" only load this plugin it has not yet been loaded for this buffer
if exists("b:did_myvimtexsettings")
  finish
endif
let b:did_myvimtexsettings = 1

nmap <leader>i <plug>(vimtex-info)

nmap <leader>t <cmd>VimtexTocToggle<cr>

nmap <leader>e <plug>(vimtex-errors)
" disabling some default features
" ---------------------------------------------
" turn off vimtex indentation
let g:vimtex_indent_enabled = 1

" disable default mappings
let g:vimtex_mappings_enabled = 0

" disable insert mode mappings (i use ultisnips)
let g:vimtex_imaps_enabled = 0

" turn off completion (not currently used so more efficient to turn off)
" let g:vimtex_complete_enabled = 0
let g:vimtex_complete_enabled = 1

" disable syntax conceal
let g:vimtex_syntax_conceal_disable = 1 

" default is 500 lines and gave me lags on missed key presses
let g:vimtex_delim_stopline = 5

" vimtex toggle delimeter configuration
" ------------------------------- "
let g:vimtex_delim_toggle_mod_list = [
  \ ['\left', '\right'],
  \ ['\big', '\big'],
  \]

" don't open quickfix for warning messages if no errors are present
let g:vimtex_quickfix_open_on_warning = 0  

" disable some compilation warning messages
let g:vimtex_quickfix_ignore_filters = [
      \ 'latex hooks warning',
      \ 'underfull \\hbox',
      \ 'overfull \\hbox',
      \ 'latex warning: .\+ float specifier changed to',
      \ 'package siunitx warning: detected the "physics" package:',
      \ 'package hyperref warning: token not allowed in a pdf string',
      \ 'fatal error occurred, no output pdf file produced!',
      \ "LaTeX Font Warning: Font shape `T1/lmodern/m/n' undefined using `T1/cmr/m/n' instead on input line 1.",
      \]

let g:vimtex_view_method = 'zathura'

" don't automatically open pdf viewer after first compilation
" let g:vimtex_view_automatic = 0

let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 0,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

" toggle shell escape on an off when using minted package
" ---------------------------------------------

" Toggles shell escape compilation on and off
 function! s:TexToggleShellEscape() abort
   if g:vimtex_compiler_latexmk.options[0] ==# '-shell-escape'
     " Disable shell escape
     call remove(g:vimtex_compiler_latexmk.options, 0)
   else
     " Enable shell escape
     call insert(g:vimtex_compiler_latexmk.options, '-shell-escape', 0)
   endif
   VimtexReload
   VimtexClean
 endfunction
" 
 nmap <leader>te <Plug>TexToggleShellEscape
 nnoremap <script> <Plug>TexToggleShellEscape <SID>TexToggleShellEscape
 nnoremap <SID>TexToggleShellEscape :call <SID>TexToggleShellEscape()<CR>
" ---------------------------------------------

" Close viewers when VimTeX buffers are closed (see :help vimtex-events)
" function! CloseViewers()
"   if executable('xdotool')
"         \ && exists('b:vimtex.viewer.xwin_id')
"         \ && b:vimtex.viewer.xwin_id > 0
"     call system('xdotool windowclose '. b:vimtex.viewer.xwin_id)
"   endif
" endfunction
" 
" augroup vimtex_event_close
"   au!
"   au User VimtexEventQuit call CloseViewers()
" augroup END

" DEFINE MAPPINGS
" ---------------------------------------------
nmap dse <plug>(vimtex-env-delete)
nmap dsc <plug>(vimtex-cmd-delete)
nmap dsm <plug>(vimtex-env-delete-math)
nmap dsd <plug>(vimtex-delim-delete)
nmap cse <plug>(vimtex-env-change)
nmap csc <plug>(vimtex-cmd-change)
nmap csm <plug>(vimtex-env-change-math)
nmap csd <plug>(vimtex-delim-change-math)
nmap tsf <plug>(vimtex-cmd-toggle-frac)
nmap tsc <plug>(vimtex-cmd-toggle-star)
nmap tse <plug>(vimtex-env-toggle-star)
nmap tsd <plug>(vimtex-delim-toggle-modifier)
nmap tsD <plug>(vimtex-delim-toggle-modifier-reverse)
nmap tsm <plug>(vimtex-env-toggle-math)
imap ]] <plug>(vimtex-delim-close)

" Text objects in operator-pending mode
omap ac <plug>(vimtex-ac)
xmap ac <plug>(vimtex-ac)
omap ic <plug>(vimtex-ic)
xmap ic <plug>(vimtex-ic)

omap ad <plug>(vimtex-ad)
xmap ad <plug>(vimtex-ad)
omap id <plug>(vimtex-id)
xmap id <plug>(vimtex-id)

omap ae <plug>(vimtex-ae)
xmap ae <plug>(vimtex-ae)
omap ie <plug>(vimtex-ie)
xmap ie <plug>(vimtex-ie)

omap am <plug>(vimtex-a$)
xmap am <plug>(vimtex-a$)
omap im <plug>(vimtex-i$)
xmap im <plug>(vimtex-i$)

omap aP <plug>(vimtex-aP)
xmap aP <plug>(vimtex-aP)
omap iP <plug>(vimtex-iP)
xmap iP <plug>(vimtex-iP)

omap ai <plug>(vimtex-am)
xmap ai <plug>(vimtex-am)
omap ii <plug>(vimtex-im)
xmap ii <plug>(vimtex-im)

" nvo mode mappings
map %  <plug>(vimtex-%)
map ]] <plug>(vimtex-]])
map ][ <plug>(vimtex-][)
map [] <plug>(vimtex-[])
map [[ <plug>(vimtex-[[)

map ]m <plug>(vimtex-]m)
map ]M <plug>(vimtex-]M)
map [m <plug>(vimtex-[m)
map [M <plug>(vimtex-[M)

map ]n <plug>(vimtex-]n)
map ]N <plug>(vimtex-]N)
map [n <plug>(vimtex-[n)
map [N <plug>(vimtex-[N)

map ]r <plug>(vimtex-]r)
map ]R <plug>(vimtex-]R)
map [r <plug>(vimtex-[r)
map [R <plug>(vimtex-[R)

map ]/ <plug>(vimtex-]/
map ]* <plug>(vimtex-]star
map [/ <plug>(vimtex-[/
map [* <plug>(vimtex-[star
