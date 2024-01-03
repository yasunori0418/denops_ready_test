let s:base_dir = '<sfile>'->expand()->fnamemodify(':p:h')
let s:plug_dir = $'{s:base_dir}/plug_dir/denops.vim'

exe 'set rtp^=' .. s:plug_dir

autocmd User DenopsReady echo 'fired DenopsReady'
