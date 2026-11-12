(set vim.g.mapleader " ")
(set vim.g.maplocalleader " ")

(local {: map!} (require "my.utils"))

;------------
;  Buffer
;------------
(map! :n :<Leader>bn ::bn<cr>
      "Next buffer")
(map! :n :<Leader>bp ::bp<cr>
      "Previous buffer")
(map! :n :<Leader>bb ::b#<cr>
      "Last visited buffer")
(map! :n :<Leader>bx ::bd!<cr>
      "Close buffer")

;------------
;  Window
;------------
(map! :n :<Leader>s ::split<cr>
      "Horizontal split")
(map! :n :<Leader>v ::vsplit<cr>
      "Vertical split")
(map! :n :<Leader>wx ::close<cr>
      "Close window")

(map! :ni :<C-h> :<ESC><C-W>h "Move between windows")
(map! :ni :<C-j> :<ESC><C-W>j "Move between windows")
(map! :ni :<C-k> :<ESC><C-W>k "Move between windows")
(map! :ni :<C-l> :<ESC><C-W>l "Move between windows")

;------------
;  Tab
;------------
(map! :n :<Left> ::tabp<cr> "Previous tab")
(map! :n :<Right> ::tabn<cr> "Next tab")

;------------
;  Move Line
;------------
; (map! :ni :<Up> "<cmd>m .-2<cr>"
;       "Move line up")
; (map! :v :<Up> ":m '<-2<cr>gv"
;       "Move line up")
;
; (map! :ni :<Down> "<cmd>m .+1<cr>"
;       "Move line down")
; (map! :v :<Down> ":m '>+1<cr>gv"
;       "Move line down")

;-----------
;  Indent
;-----------
; Persist visual mode when indenting
(map! :v :< :<gv "Visual Indent")
(map! :v :> :>gv "Visual Indent")

;-------------
;  Clipboard
;-------------
(map! :nv :<Leader>y "\"+yy<esc>"
      "Copy to system clipboard")
(map! :nv :<Leader>p "\"+p"
      "Paste from system clipboard")

;-------------
;  Search
;-------------
(map! :n :<Esc> :<cmd>noh<cr>
      {:desc "Clears search highlights"
       :silent true})

;------------------
;  File Operation
;------------------
(map! :ni :<C-s> :<cmd>w<cr>
      "Save file")

;------------------
;  Session
;------------------
; (let [path (.. (vim.fn.stdpath :config) :/ :session)]
;   (map! :n :<Leader>ss (: ":mks! %s/" :format path))
;   (map! :n :<Leader>sr (: ":so %s/" :format path)))

;-------------
;  Avoid RSI
;-------------
(map! :nv :<Leader><Leader> ::
      "Command-line mode")
(map! :nv :<Leader>f :/
      "Search mode")

;-------------
;  Terminal
;-------------
(map! :t :<Esc><Esc> :<C-\><C-n>
      "Escape terminal mode")

;-------------
;  Open
;-------------
(let [config  (.. (vim.fn.stdpath :config) :/fnl/my )]
  (map! :n :<Leader>oc (.. "<cmd>tabnew <bar> tcd " config :<CR> ":e ")
        "Open Config"))
(map! :n :<Leader>on ":tabnew <CR>:Z content<CR>:e "
      "Open Note (Obsidian Vault)")
