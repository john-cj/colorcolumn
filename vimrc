set textwidth=79 colorcolumn=79 columns=100
set linebreak number

augroup wrappedcc
  autocmd!
  autocmd OptionSet colorcolumn
      \  if &cc != '' && &cc !~ ','
      \|   let &colorcolumn = join(map(range(10), {i -> &columns * i + &cc}), ',')
      \| endif
augroup end
