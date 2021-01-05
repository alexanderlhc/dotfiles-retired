" Literature/Writing/Authoring
" set's environment to spellers friendly settings.
" used in ftplugins
function WriterModeOn()
  echo "Writers mode is enabled"

  " Wrap text => avoid horizontal scroll
  " Vim doesn't naturally move around wraps. In order to navigate prepend g
  " eg. gj, gk, g^, ...
  set wrap

  " Only wrap whole words rather than part word
  set linebreak

  " Hide whitespaces
  set nolist

  " enable spelling with default English dictionary
  set spell spelllang=en_us

endfunction
