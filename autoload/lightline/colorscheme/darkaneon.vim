let s:save_cpo = &cpo
set cpo&vim


function! s:build_palette() abort
  let p = {
        \ 'normal':   {},
        \ 'inactive': {},
        \ 'insert':   {},
        \ 'replace':  {},
        \ 'visual':   {},
        \ 'tabline':  {}}

  if &background == 'light'
    let col_base     = ['#3e445e', '#0f1117', 238, 233]
    let col_edge     = ['#1d1622', '#A599E9', 234, 245]
    let col_gradient = ['#6b7089', '#1d1622', 242, 236]
    let col_nc       = ['#ffffff', '#0f1117', 238, 233]
    let col_tabfill  = ['#4C566a', '#0f1117', 238, 233]
    let col_normal   = ['#1d1622', '#FFEE80', 234, 245]
    let col_error    = ['#1d1622', '#e27878', 234, 203]
    let col_warning  = ['#1d1622', '#e2a478', 234, 216]
    let col_insert   = ['#1d1622', '#A599E9', 234, 110]
    let col_replace  = ['#1d1622', '#e2a478', 234, 216]
    let col_visual   = ['#1d1622', '#FF9D00', 234, 150]
    let col_tabsel   = ['#1d1622', '#A599E9', 234, 245]
      else
    let col_base     = ['#3e445e', '#0f1117', 238, 233]
    let col_edge     = ['#1d1622', '#A599E9', 234, 245]
    let col_gradient = ['#6b7089', '#1d1622', 242, 236]
    let col_nc       = ['#ffffff', '#0f1117', 238, 233]
    let col_tabfill  = ['#4C566a', '#0f1117', 238, 233]
    let col_normal   = ['#1d1622', '#FFEE80', 234, 245]
    let col_error    = ['#1d1622', '#e27878', 234, 203]
    let col_warning  = ['#1d1622', '#e2a478', 234, 216]
    let col_insert   = ['#1d1622', '#A599E9', 234, 110]
    let col_replace  = ['#1d1622', '#e2a478', 234, 216]
    let col_visual   = ['#1d1622', '#FF9D00', 234, 150]
    let col_tabsel   = ['#1d1622', '#A599E9', 234, 245]
  endif

  let p.normal.middle = [
        \ col_base]
  let p.normal.left = [
        \ col_normal,
        \ col_gradient]
  let p.normal.right = [
        \ col_edge,
        \ col_gradient]
  let p.normal.error = [
        \ col_error]
  let p.normal.warning = [
        \ col_warning]

  let p.insert.left = [
        \ col_insert,
        \ col_gradient]
  let p.replace.left = [
        \ col_replace,
        \ col_gradient]
  let p.visual.left = [
        \ col_visual,
        \ col_gradient]

  let p.inactive.middle = [
        \ col_nc]
  let p.inactive.left = [
        \ col_nc,
        \ col_nc]
  let p.inactive.right = [
        \ col_nc,
        \ col_nc]

  let p.tabline.middle = [
        \ col_tabfill]
  let p.tabline.left = [
        \ col_tabfill]
  let p.tabline.tabsel = [
        \ col_tabsel]

  let p.tabline.right = copy(p.normal.right)

  return p
endfunction


let g:lightline#colorscheme#darkaneon#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
