" auto install plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" initialize plug
call plug#begin('~/.vim/plugged')

" theme
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

" search
Plug 'mileszs/ack.vim'

" file navigation
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" seamlessly navigation
Plug 'christoomey/vim-tmux-navigator'

" git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" fuzzy file finder
Plug 'wincent/command-t', {
      \ 'do': 'cd ruby/command-t/ext/command-t && /usr/local/opt/ruby/bin/ruby extconf.rb && make'
      \ }

" show indentation marks
Plug 'nathanaelkane/vim-indent-guides'

" comment all the things
Plug 'tomtom/tcomment_vim'

" surround all the things
Plug 'tpope/vim-surround'

" syntax checker and linter
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" javascript
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

" typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" rust
Plug 'rust-lang/rust.vim'

" vue
Plug 'posva/vim-vue'

" graphql
Plug 'jparise/vim-graphql'

" code formatter
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'scss', 'json', 'graphql', 'markdown', 'yaml', 'html'] }

call plug#end()
