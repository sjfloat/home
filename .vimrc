:source ~/.exrc
syntax on
set modeline
set undolevels=0
set nobackup
"set textwidth=80
set modelines=5
set expandtab
colo murphy

call pathogen#infect()
call pathogen#helptags()

au BufNewFile,BufRead *.asciidoc,*.adoc,README,TODO,CHANGELOG,NOTES  setfiletype asciidoc

au BufNewFile,BufRead *.mas,*.html        so $VIMRUNTIME/syntax/mason.vim
au BufNewFile,BufRead *.inst,*.orc,*.sco,*.csd   so $VIMRUNTIME/syntax/csound.vim
"au BufNewFile,BufRead *.csd               so $VIMRUNTIME/macros/csound_macros.vim
"au BufNewFile *.csd                       0r $VIMRUNTIME/templates/template.csd
"au BufNewFile *.orc                       0r $VIMRUNTIME/templates/template.orc
au BufNewFile *.pm,*.pl,*.xml,*.xsl,*.html,*.csd,*.sco,*.orc    0r !template-new <afile>
au BufNewFile *.java,*.groovy 0r !template-new <afile>
au BufNewFile *.*pp 0r !template-new <afile>
:filetype plugin on

" maven stuff
set errorformat=[ERROR]\ %f:[%l%.%c]%m
set makeprg=mvntest
"set makeprg=mvn\ clean\ test\ -q
