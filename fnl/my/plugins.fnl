(local {: map!
        : packadd!
        : augroup!} (require :my.utils))
(local export {})

(fn setup [name ?config]
  (let [plugin (require name)
        config (or ?config {})]
    (plugin.setup config)))
    ; plugin))

; (fn lz-map [spec]
;   (let [keymap ((. (require :lz.n) keymap) spec)]
;     (fn [mode key run opt]
;       (let [mode (vim.split mode "")
;             opt (if (= :string (type opt)) {:desc opt} opt)]
;         #(keymap.set mode key run opt)))))

(fn lz-map [mode key run opt]
  (let [mode {:mode (vim.split mode "")}
        opt (if (= :string (type opt)) {:desc opt} opt)]
    (vim.tbl_extend :keep {1 key 2 run} mode (or opt {}))))

(fn export.apm []
  (packadd! :vim-apm)
  (let [apm (require :vim-apm)]
    (apm:setup {})
    (map! :n :<Leader>apm #(apm:toggle_monitor))))

(set export.conjure
     {1 :conjure
      :ft [:clojure :fennel]})

; (fn export.devicons []
;   (packadd! :nvim-web-devicons)
;   (setup :nvim-web-devicons))
(set export.devicons
     {1 :nvim-web-devicons
      :after #(setup :nvim-web-devicons)})

(set export.emmet
     {1 :emmet-vim
      :before #(tset vim.g :user_emmet_leader_key ",")
      :ft [:html :javascript :javascriptreact :typescript :typescriptreact]})
; (fn export.emmet []
;   (tset vim.g :user_emmet_leader_key ",")
;   (packadd! :emmet-vim))

(set export.fundo
     {1 :nvim-fundo
      :before #(packadd! :promise-async)
      :after #(setup :fundo)
      :event :DeferredUIEnter})

; (fn export.fundo []
;   (packadd! :nvim-fundo)
;   (setup :fundo))

(fn export.klog []
  (packadd! :vim-klog))

(fn export.leap []
  (packadd! :leap.nvim)
  (let [leap (require :leap)]
    (leap.create_default_mappings)))

(fn export.mini [modules]
  (packadd! :mini.nvim)
  (setup :mini.pairs)
  (setup :mini.files)
  (map! :n :<Leader>of _G.MiniFiles.open "Open [mini]files")
  (setup :mini.comment)
  ;(setup :mini.surround))
  (let [hp (require :mini.hipatterns)]
    (hp.setup {:highlighters
               {:hex_color (hp.gen_highlighter.hex_color)}})))

; (fn mini [mods]
;   (let [mini-mods {:pairs #(setup :mini.pairs)
;                    :files #(setup :mini.files)
;                    :comment #(setup :mini.comment)
;                    :hipatterns #(let [hp (require :mini.hipatterns)]
;                                   (hp.setup {:highlighters
;                                              {:hex_color (hp.gen_highlighter.hex_color)}}))}]
;     (each [mod config (pairs mods)]
;       ((. mini-mods mod)))))

; (fn mini [mods]
;   (each [mod config
;          (pairs
;            {:pairs #(setup :mini.pairs)
;             :files #(setup :mini.files)
;             :comment #(setup :mini.comment)
;             :hipatterns #(let [hp (require :mini.hipatterns)]
;                            (hp.setup {:highlighters
;                                       {:hex_color (hp.gen_highlighter.hex_color)}}))})]
;     ))

; (fn export.neoscroll []
;   (packadd! :neoscroll.nvim)
;   (setup :neoscroll))

(set export.neoscroll
     {1 :neoscroll.nvim
      :after #(setup :neoscroll)
      :event :DeferredUIEnter})

(set export.pencil
     {1 :vim-pencil
      :ft :text
      :after #(vim.cmd :PencilSoft)})

(set export.sandwich
     {1 :vim-sandwich})
; (set export.smart-splits
;      {1 :smart-splits.nvim
;       :after #(setup :smart-splits)
;       :keys [{1 :<A-h> 2 :<cmd>SmartResizeLeft<CR>  :desc "Resize pane"}
;              {1 :<A-j> 2 :<cmd>SmartResizeDown<CR>  :desc "Resize pane"}
;              {1 :<A-k> 2 :<cmd>SmartResizeUp<CR>    :desc "Resize pane"}
;              {1 :<A-l> 2 :<cmd>SmartResizeRight<CR> :desc "Resize pane"}]})
(set export.smart-splits
     {1 :smart-splits.nvim
      :after #(setup :smart-splits)
      :keys [(lz-map :n :<A-h> :<cmd>SmartResizeLeft<CR>  "Resize pane")
             (lz-map :n :<A-j> :<cmd>SmartResizeDown<CR>  "Resize pane")
             (lz-map :n :<A-k> :<cmd>SmartResizeUp<CR>    "Resize pane")
             (lz-map :n :<A-l> :<cmd>SmartResizeRight<CR> "Resize pane")]})

; (fn export.smart-splits []
;   (packadd! :smart-splits.nvim)
;   (let [ss (require :smart-splits)]
;     (ss.setup {})
;     (map! :n :<A-h> ss.resize_left "Resize pane")
;     (map! :n :<A-j> ss.resize_down "Resize pane")
;     (map! :n :<A-k> ss.resize_up "Resize pane")
;     (map! :n :<A-l> ss.resize_right "Resize pane")))

; (fn export.substitute []
;   (packadd! :substitute.nvim)
;   (let [s (require :substitute)]
;     (s.setup)
;     (map! :n :x s.operator "Substitute")
;     (map! :n :xx s.line "Substitute")
;     (map! :n :X s.eol "Substitute")
;     (map! :x :x s.visual "Substitute")))
(set export.substitute
     {1 :substitute.nvim
      :after (fn []
               (let [s (require :substitute)]
                 (s.setup)
                 (map! :n :x s.operator "Substitute")
                 (map! :n :xx s.line    "Substitute")
                 (map! :n :X s.eol      "Substitute")
                 (map! :x :x s.visual   "Substitute")))
      :keys [(lz-map :n :x )
             (lz-map :n :xx) 
             (lz-map :n :X )
             (lz-map :x :x )]})

(fn export.telescope []
  (packadd! :plenary.nvim)
  (packadd! :telescope.nvim)
  (setup :telescope
         {:defaults {:prompt_prefix "   "
                     :sorting_strategy :ascending
                     :layout_config
                     {:horizontal
                      {:prompt_position :top}}}})
  (map! :n :<Leader>ff ":Telescope find_files<cr>"
        "Find files")
  (map! :n :<Leader>fb ":Telescope buffers<cr>"
        "Find buffers")
  (map! :n :<Leader>fc ":Telescope live_grep<cr>"
        "Find context")
  (map! :n :<Leader>fh ":Telescope help_tags<cr>"
        "Find help tags")
  (map! :n :<Leader>fk ":Telescope keymaps<cr>"
        "Find keymaps"))

; (fn export.terminal []
;   (packadd! :nvim-terminal)
;   (setup :nvim-terminal)
;
;   (let [term (. (require :nvim-terminal) :DefaultTerminal)]
;     (map! :n :<Leader>ot #(term:open)
;           "Open terminal")))

(set export.terminal
     {1 :nvim-terminal
      :after #(setup :nvim-terminal)
      :keys [{1 :<Leader>ot
              2 #(let [term (. (require :nvim-terminal) :DefaultTerminal)]
                   (term:open))
              :desc "Open Terminal"}]})

(fn export.toggleterm []
  (packadd! :toggleterm.nvim)
  (setup :toggleterm
         {:open_mapping :<Leader>ot
          :insert_mappings false}))

(fn export.treesitter []
  (packadd! :nvim-treesitter)
  (setup :nvim-treesitter.configs
         {:ensure_installed [:c :lua :fennel :python]
          :highlight        {:enable true}}))

(fn export.typst-preview []
  (packadd! :typst-preview.nvim)
  (setup :typst-preview))

(set export.wilder
     {1 :wilder.nvim
      :after (fn []
               (setup :wilder {:modes [:: :/ :?]})
               (let [wilder (require :wilder)]
                 (wilder.set_option
                   :renderer
                   (wilder.popupmenu_renderer
                     ; Command Palette theme
                     (wilder.popupmenu_palette_theme
                       {:border :rounded
                        :max_height: :75%
                        :min_height 0
                        :prompt_position :top
                        :reverse 0
                        :highlighter (wilder.basic_highlighter)
                        :highlights {:accent (wilder.make_hl
                                               :WilderAccent
                                               :Pmenu
                                               [{:a 1} {:a 1} {:foreground :#f4468f}])
                                     :left [" " (wilder.popupmenu_devicons)]}})))))
      :keys [:: :/ :?]})
export
