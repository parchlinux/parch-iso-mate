"  _  _ ___
" | || | __|   H
" | __ | _|    A
" |_||_|___|   P
"
"
" Global Section {{{
" Makefile:
au FileType * nnoremap <leader>cc :term make<CR>
au FileType * nnoremap <leader>cx :term make force<CR>
" Git:
au FileType * nnoremap <leader>gs :term git status -s<CR>
au FileType * nnoremap <leader>gl :term git log --oneline --stat --graph --all<CR>
au FileType * nnoremap <leader>ga :term git add %<CR>
au FileType * nnoremap <leader>gc :term git commit<CR>
" }}}
"
" C++ section {{{
"" compile via \fe
autocmd FileType cpp nnoremap <leader>fw :term g++ % -o %:r<CR>
"" run via \fw
autocmd FileType cpp nnoremap <leader>fe :term ./%:r<CR>
"" compile and run via \fq
autocmd FileType cpp nnoremap <leader>fq :term g++ % && ./%:r<CR>
" }}}
" C section {{{
"" compile via \fe
autocmd FileType c nnoremap <leader>fw :term gcc -Wall %:r.c -o %:r<CR>
"" run via \fw
autocmd FileType c nnoremap <leader>fe :term ./%:r<CR>
"" compile and run via \fq
autocmd FileType c nnoremap <leader>fq :term gcc -Wall %:r.c && ./%:r<CR>
" }}}
"
" LaTeX section {{{
"" using pdflatex
"autocmd Filetype tex nnoremap <leader>fe :term pdflatex %:r.tex<CR>
"" using XeLaTeX
autocmd Filetype tex nnoremap <leader>fw :term xelatex %:r.tex<CR>
" }}}
" groff section {{{
"" mspdf macro to pdf
autocmd Filetype nroff nnoremap <leader>fw :term groff -mspdf -Tpdf %:r.ms > %:r.pdf<CR>
" }}}
" markdown section {{{
"" markdown to pdf via pandoc
""autocmd Filetype markdown nnoremap <leader>fe :term pandoc %:r.md -o %:r.pdf<CR>
"autocmd Filetype markdown,vimwiki nnoremap <leader>fe :term glow -p %<CR>
"autocmd Filetype markdown,vimwiki nnoremap <leader>fw :term mdp %<CR>
" }}}
" rmarkdown section {{{
"" markdown to pdf via pandoc
"autocmd Filetype markdown nnoremap <leader>fe :term pandoc %:r.md -o %:r.pdf<CR>
autocmd Filetype rmd nnoremap <leader>fw :term Rscript -e "rmarkdown::render('%')"<CR>
"autocmd Filetype rmd nnoremap <leader>fw :term mdp %<CR>
" }}}
" sent section {{{
autocmd Filetype text nnoremap <leader>fe :term sent -f 'Liberation Serif' % &<CR>
" }}}
"
"" folding section {{{
""" save via zs
"autocmd Filetype *  nnoremap zs :mkview<CR>  
""" restore via zr
"autocmd Filetype *  nnoremap zr :loadview<CR>
"" }}}
"
" execute Python programs {{{
autocmd FileType python nnoremap <leader>fe :term python3 %:p<CR>
" }}}
" execute Lua programs {{{
autocmd FileType lua nnoremap <leader>fe :term lua5.4 %:p<CR>
" }}}
"
" shell {{{
autocmd FileType sh nnoremap <leader>fe :term bash %:p<CR>
autocmd FileType sh nnoremap <leader>fw :term dash %:p<CR>
autocmd FileType csh nnoremap <leader>fq :term tcsh %:p<CR>
" }}}

