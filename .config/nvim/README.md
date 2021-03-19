# Vim

## Ideas for future

* Consider using F9-12 to: runtest, dispatch run (:Dispatch ...), run, compile


## Learn

* Registers
* Convention for jumping to definition `K` vs `gd`.
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
