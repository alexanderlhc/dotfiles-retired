# Vim

## Ideas for future

## Learn

* Registers
* Learn debugger: https://github.com/mfussenegger/nvim-dap
* Remember mappings:
  * `gv` = reselect last visual.
  * `<C-u>` = undo in insert.
  * `<C-x><C-f>` = auto complete file+path.
  * `cw, caw, ciw` = change word, change around, change inside
  * `o` = move other direction inside visual
* Consider `set shiftround` (round indent space to closets multiple of shiftwidth)
* The full power of pattern matching:
  * Use and reuse the match `&` char
  * Dealing with cases:
    ```
    \U – when used in a replacement pattern, uppercases everything after it
    \L – lowercases everything after it
    \u – uppercases the first character of what follows
    \l – lowercases the first character of what follows
    \e or \E – stops the uppercasing or lowercasing
    ```
