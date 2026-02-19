function! vimrc#plugin_dir()
  if !has('nvim')
    return expand('~/.vim/plugins')
  else
    return expand('~/.cache/dpp')
  endif
endfunction

function! vimrc#setup_dpp()
  let l:base_dir = vimrc#plugin_dir()
  let l:repos = [
    \ 'Shougo/dpp.vim',
    \ 'vim-denops/denops.vim',
    \ 'Shougo/dpp-ext-toml',
    \ 'Shougo/dpp-ext-installer',
    \ 'Shougo/dpp-ext-lazy',
    \ 'Shougo/dpp-protocol-git',
    \ ]

  for l:repo in l:repos
    let l:dir = l:base_dir . '/repos/github.com/' . l:repo
    if !isdirectory(l:dir)
      call system('git clone --depth 1 https://github.com/' . l:repo . ' ' . shellescape(l:dir))
    endif
    execute 'set runtimepath^=' . l:dir
  endfor
endfunction

function! vimrc#load_dpp()
  if dpp#min#load_state(g:dpp_dir)
    autocmd User DenopsReady ++once
      \ call dpp#make_state(g:dpp_dir, expand('~/.config/nvim/dpp.ts'))
    autocmd User Dpp:makeStatePost ++once call vimrc#after_make_state()
  endif
endfunction

function! vimrc#after_make_state()
  source $MYVIMRC
  call dpp#async_ext_action('installer', 'install')
endfunction

function! vimrc#init()
  let g:dpp_dir = vimrc#plugin_dir()
  let g:repo_dir = g:dpp_dir . '/repos/github.com'
  let g:mapleader = ","

  call vimrc#setup_dpp()
  call vimrc#load_dpp()

  runtime! configs/*.vim
endfunction

function! vimrc#reload()
  if has('nvim')
    exec ':source ~/.config/nvim/init.vim'
  else
    exec ':source ~/.vimrc'
  endif
endfunction
