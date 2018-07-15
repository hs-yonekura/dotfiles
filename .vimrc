" 構文チェック
syntax enable
" エンコーディング
set encoding=UTF-8
set fileencoding=UTF-8
set termencoding=UTF-8
" 行間移動を可能にする
set whichwrap=b,s,<,>,[,]
" スクロールする時に下が見えるようにする
set scrolloff=5
" .swapファイルを作らない
set noswapfile
" バックアップファイルを作らない
set nowritebackup
" バックアップをしない
set nobackup
" ターミナル接続を高速化
set ttyfast
" バックスペースで各種消せるようにする
set backspace=indent,eol,start
" ビープ音を消す
set vb t_vb=
set novisualbell
" 不可視文字を表示
set list
" 右下に表示される行・列の番号を表示する
set ruler
" compatibleオプションをオフにする
set nocompatible
" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline
" 対応括弧に<と>のペアを追加
set matchpairs& matchpairs+=<:>
" 対応括弧をハイライト表示する
set showmatch
" 対応括弧の表示秒数を3秒にする
set matchtime=3
" ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap
" 入力されているテキストの最大幅を無効にする
set textwidth=0
"カーソルを表示行で移動する。物理行移動は<C-n>,<C-p>
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
" 不可視文字を表示
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
" インデントをshiftwidthの倍数に丸める
set shiftround
" 補完の際の大文字小文字の区別しない
set infercase
" 全角括弧関連
set matchpairs+=「:」,『:』,（:）,【:】,《:》,〈:〉,［:］,‘:’,“:”
" 変更中のファイルでも、保存しないで他のファイルを表示
set hidden
" 新しく開く代わりにすでに開いてあるバッファを開く
set switchbuf=useopen
" 小文字の検索でも大文字も見つかるようにする
set ignorecase
" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase
" インクリメンタルサーチを行う
set incsearch
" 検索結果をハイライト表示
set hlsearch
" タブ文字幅
set tabstop=4
" 自動インデントの幅
set shiftwidth=4
" タブ入力を複数の空白入力に置き換え
set expandtab
" 行頭の余白内で Tab を打ち込むとshiftwidthの数だけインデントする
set smarttab
" autoindentと同様だがC構文を認識
set smartindent
" カラー設定
set t_Co=256
set background=dark
" カラースキーマ Molokai
colorscheme molokai 
" 行番号表示
set number
" タイトルをウィンドウ枠に表示
set title
set undolevels=300
" コマンド・検索パターンの履歴
set history=10000
set viminfo='100,/50,%,<1000,f50,s100,:100,c,h,!
" IME設定
set iminsert=0
set imsearch=0
set imdisable
" ステータスライン
set laststatus=2
" メッセージ表示欄
set cmdheight=2
" 置換の時 g オプションをデフォルトで有効にする
set gdefault
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" コマンドを画面下に表示させる
set showcmd
" タブ補完
set wildmenu
set wildmode=list:longest
" 最後尾まで検索を終えたら次の検索で先頭に移る
set wrapscan
" ペースト
set pastetoggle=<F12>
set clipboard=unnamed,unnamedplus,autoselect
" ESCキーが押されてからの待ち時間
set timeoutlen=300
" マウス対応
set mouse=a
set ttymouse=xterm2
" " コマンドを画面最下部に表示する
set showcmd

" プラグイン管理 Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" ディレクトリ表示
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Clojureコーディング支援
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Go入力支援
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" 選択インターフェースfzh
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Vim非同期処理ライブラリ
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" コーディング中のプログラムをvimから起動
Plug 'thinca/vim-quickrun'
" JavaScript用プラグイン
Plug 'pangloss/vim-javascript'
" JavaScript Syntaxチェック
Plug 'jelera/vim-javascript-syntax'
" CoffeeScript用
Plug 'kchmck/vim-coffee-script'
" node.js用
Plug 'moll/vim-node'
" Markdownプラグイン
Plug 'plasticboy/vim-markdown'
" Rubyプラグイン
Plug 'vim-ruby/vim-ruby'
Plug 'kana/vim-textobj-user'
Plug 'rhysd/vim-textobj-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
" コメントアウトプラグイン
Plug 'tomtom/tcomment_vim'
" HTMLタグハイライト
Plug 'gregsexton/matchtag'
" ブラウザを開く
Plug 'tyru/open-browser.vim'
" IME関連
Plug 'tyru/eskk.vim'
" Macのみブラウザをリロード
Plug 'tell-k/vim-browsereload-mac'
" Pythonプラグイン
" Plug 'davidhalter/jedi-vim'
" Goプラグイン
Plug 'fatih/vim-go'
" JSONプラグイン
Plug 'leshill/vim-json'
" Angular.jsプラグイン
Plug 'burnettk/vim-angular'
" 入力補完
Plug 'shougo/neocomplete.vim'
" Scalaプラグイン
Plug 'derekwyatt/vim-scala'
" Swiftプラグイン
Plug 'keith/swift.vim'
" WordPressプラグイン
Plug 'dsawardekar/wordpress.vim'
" CSVプラグイン
Plug 'chrisbra/csv.vim'
" HTML5プラグイン
Plug 'othree/html5.vim'
" GitHubプラグイン
Plug 'junegunn/vim-github-dashboard'
Plug 'mattn/gist-vim'
" スニペット
Plug 'Townk/vim-autoclose'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-endwise'
Plug 'Townk/vim-autoclose'
" IDEプラグイン
Plug 'scrooloose/syntastic'
" 絵文字プラグイン
Plug 'junegunn/vim-emoji'
" 非同期にシェルを実行
Plug 'Shougo/vimshell'
" vimの文字列を別ペインに転送
Plug 'jpalardy/vim-slime'
" シンタックスチェック
Plug 'scrooloose/syntastic'
" Perlプラグイン
Plug 'hotchpotch/perldoc-vim'
" 括弧の自動補完
Plug 'cohama/lexima.vim'
" yankしているものを入れ替え
Plug 'kana/vim-operator-user'
Plug 'kana/vim-operator-replace'
" ソースコードを実行
Plug 'thinca/vim-quickrun'
" 接続サーバーを選択
Plug 'shougo/neossh.vim'
" ステータスライン・タブライン
Plug 'itchyny/lightline.vim'
" 辞書読み込み
Plug 'thinca/vim-ref'
" cs'" で'を"に置換 cs'<p>と打ち込むと、'文字列を<p>タグで囲む
Plug 'tpope/vim-surround'
" git操作
Plug 'tpope/vim-fugitive'
" R言語用プラグイン
Plug 'vim-scripts/Vim-R-plugin'
" Hive用プラグイン
Plug 'autowitch/hive.vim'
" インデントの深さを視覚的に表示
Plug 'Yggdroot/indentLine'
" 末尾の空白対策
Plug 'bronson/vim-trailing-whitespace'
" PHPコードフォーマット
Plug 'beanworks/vim-phpfmt'
" PHP未定義変数・未使用変数を表示
Plug 'flyinshadow/php_localvarcheck.vim'
" はてなブログ投稿
Plug 'mattn/webapi-vim'
Plug 'moznion/hateblo.vim'
" Gmailプラグイン
Plug 'yuratomo/gmail.vim'
" Twitterプラグイン
Plug 'basyura/twibill.vim'
Plug 'basyura/TweetVim'
" Slackプラグイン
Plug 'heavenshell/vim-slack'
" 日本語禁則処理
Plug 'fuenor/JpFormat.vim'
" プロジェクトからファイルを検索
Plug 'ctrlpvim/ctrlp.vim'
" コメントの追加・削除
Plug 'tyru/caw.vim'
" jkキーの移動高速化
Plug 'rhysd/accelerated-jk'


call plug#end()
" filetype設定
filetype on
filetype plugin on
filetype indent on
set linespace=4
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
" カラースキーマ設定
let g:molokai_use_iTerm_colors = 1
"mru,reg,,buf設定
noremap :um :Unite file_mru -buffer-name=file_mru
noremap :ur :Unite register -buffer-name=register
noremap :ub :Unite buffer -buffer-name=buffer
nnoremap <C-u>m  :Unite file_mru<CR>
" NERDTree設定
" Ctrl+nでNERDTreeを表示
map <C-n> :NERDTreeToggle<CR>
" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1
" デフォルトでツリーを表示させる
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if !argc() | Startify | NERDTree | wincmd w | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 拡張子のHighlight設定
 function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('py', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('rb', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
" ディレクトリ表示記号を変更する
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'

" 括弧の自動補完
call lexima#add_rule({'char': '「', 'input_after': '」', 'at': '\%#$'})

" 検索モードを開く
nmap <Leader>f :CtrlP<CR>

" fzfランタイムパス
set rtp+=~/.fzf
" Vimからfzfを実行
nnoremap <silent> <Leader>C :call fzf#run({
    \ 'source': map(split(globpath(&rtp, "colors/*.vim"), "\n"),
    \         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
    \ 'sink': 'colo',
    \ 'options': '+m',
    \ 'left': 30
    \})<CR>

" quickrunの非同期処理
let g:quickrun_config={'*': {'split': ''}}
let g:quickrun_config._={ 'runner':'vimproc',
\       "runner/vimproc/updatetime" : 10,
\       "outputter/buffer/close_on_empty" : 1,
\ }

" node.js用設定
autocmd User Node if &filetype == "javascript" | setlocal expandtab | endif
autocmd User Node
  \ if &filetype == "javascript" |
  \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
  \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
  \ endif



" Markdown表示
autocmd User BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown

" Ruby設定
autocmd BufNewFile,BufRead *.jbuilder set filetype=ruby
autocmd BufNewFile,BufRead Guardfile  set filetype=ruby
autocmd BufNewFile,BufRead .pryrc     set filetype=ruby
autocmd FileType eruby exec 'set filetype=' . 'eruby.' . b:eruby_subtype
autocmd FileType ruby setl iskeyword+=?

 " ブラウザで開く
let g:netrw_nogx = 1 " netrwのキーマッピングを無効化
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" go言語設定
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" neocomplete設定
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" syntastic設定
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" 絵文字設定
silent! if emoji#available()
  let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
  let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
  let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
  let g:gitgutter_sign_modified_removed = emoji#for('collision')
endif
" vimshell設定
" ,sh: シェルを起動
nnoremap <silent> ,sh :VimShell<CR>
" ,spy: pythonを非同期で起動
nnoremap <silent> ,spy :VimShellInteractive python<CR>
" ,irb: irbを非同期で起動
nnoremap <silent> ,irb :VimShellInteractive irb<CR>
" ,ss: 非同期で開いたインタプリタに現在の行を評価させる
vmap <silent> ,ss :VimShellSendString<CR>
" 選択中に,ss: 非同期で開いたインタプリタに選択行を評価させる
nnoremap <silent> ,ss <S-v>:VimShellSendString<CR>
" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow
" w!! でスーパーユーザーとして保存（sudoが使える環境限定）
cmap w!! w !sudo tee > /dev/null %
" 入力モード中に素早くJJと入力した場合はESCとみなす
inoremap jj <Esc>
" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>
" カーソル下の単語を * で検索
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>
" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk
" vを二回で行末まで選択
vnoremap v $h
" TABにて対応ペアにジャンプ
nnoremap &lt;Tab&gt; %
vnoremap &lt;Tab&gt; %
" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Shift + 矢印でウィンドウサイズを変更
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>
" T + ? で各種設定をトグル
nnoremap [toggle] <Nop>
nmap T [toggle]
nnoremap <silent> [toggle]s :setl spell!<CR>:setl spell?<CR>
nnoremap <silent> [toggle]l :setl list!<CR>:setl list?<CR>
nnoremap <silent> [toggle]t :setl expandtab!<CR>:setl expandtab?<CR>
nnoremap <silent> [toggle]w :setl wrap!<CR>:setl wrap?<CR>
" :e などでファイルを開く際にフォルダが存在しない場合は自動作成
function! s:mkdir(dir, force)
  if !isdirectory(a:dir) && (a:force ||
        \ input(printf('"%s" does not exist. Create? [y/N]', a:dir)) =~? '^y\%[es]$')
    call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
  endif
endfunction
" vim 起動時のみカレントディレクトリを開いたファイルの親ディレクトリに指定
function! s:ChangeCurrentDir(directory, bang)
    if a:directory == ''
        lcd %:p:h
    else
        execute 'lcd' . a:directory
    endif
    if a:bang == ''
        pwd
    endif
endfunction
" ~/.vimrc.localが存在する場合のみ設定を読み込む
let s:local_vimrc = expand('~/.vimrc.local')
if filereadable(s:local_vimrc)
    execute 'source ' . s:local_vimrc
endif
" /{pattern}の入力中は「/」をタイプすると自動で「\/」が、
" ?{pattern}の入力中は「?」をタイプすると自動で「\?」が 入力されるようになる
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'
"表示行単位で行移動する
nnoremap <silent> j gj
nnoremap <silent> k gk
"インサートモードでも移動
inoremap <c-d> <delete>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-h> <left>
inoremap <c-l> <right>
"画面切り替え
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
"<space>j, <space>kで画面送り
noremap [Prefix]j <c-f><cr><cr>
noremap [Prefix]k <c-b><cr><cr>

" PHP用設定
" :makeでPHP構文チェック
au FileType php setlocal makeprg=php\ -l\ %
au FileType php setlocal errorformat=%m\ in\ %f\ on\ line\ %l
" PHPの関数やクラスの折りたたみ
let php_folding = 0
" 文字列の中のSQLをハイライト
let php_sql_query = 1
" Baselibメソッドのハイライト
let php_baselib = 1
" HTMLもハイライト
let php_htmlInStrings = 1
" <? を無効にする→ハイライト除外にする
let php_noShortTags = 1
" ] や ) の対応エラーをハイライト
let php_parent_error_close = 1
let php_parent_error_open = 1


" MySQL設定
let g:sql_type_default = 'mysql'
" SQLのPHP文字リテラルへの整形(:Sqltop, :Sqlfromp)
function! SQLToPHP()
%s/^\(.\+\)$/"\1 " \./g

normal G$
execute "normal ?.&lt;CR&gt;"
normal xxggVG
echo "Convert to PHP String is finished."
endfunction
command! Sqltop :call SQLToPHP()
function! SQLFromPHP()
%s/^"\(.\+\) " *\.*$/\1/g

normal ggVG
echo "Convert from PHP String is finished."
endfunction
command! Sqlfromp :call SQLFromPHP()

" ハイライト色設定
highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PMenuSbar ctermbg=4
" sable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'


" キーワード定義
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" neocomplete用キーマッピング.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" その他キーマッピング
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"


" シェルライクビヘイビア
set completeopt=menu,preview

" omni completionを有効にする
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
" Perl用設定
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
autocmd BufNewFile,BufRead *.psgi   set filetype=perl
autocmd BufNewFile,BufRead *.t      set filetype=perl

" Snippet設定
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets'
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" スニペット用のスーパータブ設定
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" スニペットコンプリートメーカー用設定
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" 辞書設定
let g:neocomplete#sources#dictionary#dictionaries  = {
\    'css':        $HOME . '/.vim/dict/css.dict',
\    'html':       $HOME . '/.vim/dict/html.dict',
\    'javascript': $HOME . '/.vim/dict/javascript.dict',
\    'php':        $HOME . '/.vim/dict/php.dict',
\    'java':       $HOME . '/.vim/dict/java.dict',
\    'perl':       $HOME . '/.vim/dict/perl.dict',
\    'ruby':       $HOME . '/.vim/dict/ruby.dict',
\}

 " キーワード定義
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'


" Java用設定
"SQLのJava文字リテラルへの整形(:Sqltoj, :Sqlfromj)
function! SQLToJava()
%s/^\(.\+\)$/"\1 " \+/g

normal G$
execute "normal ?+\&lt;CR&gt;"
normal xxggVG
echo "Convert to Java String is finished."
endfunction
command! Sqltoj :call SQLToJava()
function! SQLFromJava()
%s/^"\(.\+\) " *+*$/\1/g

normal ggVG
echo "Convert from Java String is finished."
endfunction
command! Sqlfromj :call SQLFromJava()

" Ruby用設定
" :makeでRuby構文チェック
au FileType ruby setlocal makeprg=ruby\ -c\ %
au FileType ruby setlocal errorformat=%m\ in\ %f\ on\ line\ %l

" Scala設定
augroup filetypedetect
autocmd! BufNewFile,BufRead *.scala setfiletype scala
autocmd! BufNewFile,BufRead *.sbt setfiletype scala
augroup END


" Hive設定
au BufNewFile,BufRead *.hql set filetype=hive expandtab
au BufNewFile,BufRead *.q set filetype=hive expandtab

" 行末、行の最初への移動のキーマップ設定
:map! <C-e> <Esc>$a
:map! <C-a> <Esc>^a
:map <C-e> <Esc>$a
:map <C-a> <Esc>^a

" Ctrl+dで$、Ctrl+aで@
inoremap <C-d> $
inoremap <C-a> @

" \ + rでスクリプト実行
nmap <Leader>r <plug>(quickrun)

" 全角スペースのハイライトを設定
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey
endfunction
if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    " ZenkakuSpaceをカラーファイルで設定するなら次の行は削除
    autocmd ColorScheme       * call ZenkakuSpace()
    " 全角スペースのハイライト指定
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif


"vim-refでalcを使う設定
let g:ref_source_webdict_cmd = 'lynx -dump -nonumbers %s'
let g:ref_source_webdict_use_cache = 1
let g:ref_source_webdict_sites = {
            \ 'alc' : {
            \   'url' : 'http://eow.alc.co.jp/%s/UTF-8/'
            \   }
            \ }
function! g:ref_source_webdict_sites.alc.filter(output)
      return join(split(a:output, "\n")[42 :], "\n")
endfunction

" はてなブログ投稿設定
let g:hateblo_vim = {
    \ 'user':         'netcraft3',
    \ 'api_key':      '************',
    \ 'api_endpoint': 'https://blog.hatena.ne.jp/netcraft3/netcraft3.hatenablog.com/atom',
    \ 'WYSIWYG_mode': 0,
    \ 'always_yes':   0,
    \ 'edit_command': 'edit'
\ }

" Gmail設定
let g:gmail_imap = 'imap.gmail.com:993'
let g:gmail_smtp = 'smtp.gmail.com:465'
let g:gmail_user_name = '*****@****.**'
