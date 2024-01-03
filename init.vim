let s:base_dir = '<sfile>'->expand()->fnamemodify(':p:h')
let s:denops = $'{s:base_dir}/plug/denops.vim'

exe 'set rtp^=' .. s:denops

autocmd User DenopsReady echomsg 'fired DenopsReady'
autocmd VimEnter * echomsg 'fired VimEnter'
