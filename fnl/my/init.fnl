(fn g! [...]
  (if (not= 0 (% (length [...]) 2))
      (values nil "Args is odd, it needs to be even")

      (for [i 1 (/ (length [...]) 2)]
        (tset vim.g
              (. [...] (- (* i 2) 1)) ; var
              (. [...] (* i 2))))))   ; val	

; For faster startup. Prevent loading unnecessary built-in plugins
(g! :loaded_tutor_mode_plugin 1
    ;:loaded_2html_plugin 1
    ;:loaded_matchparen 1
    ;:loaded_matchit 1
    ;:loaded_tar 1
    ;:loaded_gzip 1
    ;:loaded_tarPlugin 1
    ;:loaded_zipPlugin 1
    ;:loaded_netrw 1
    ;:loaded_netrwPlugin 1
    :loaded_spec 1)

(require :my.settings)
(require :my.keymaps)
(require :my.commands)

(let [load (. (require :lz.n) :load)
      p (require :my.plugins)]
  (load [p.devicons
         p.sandwich
         p.fundo
         p.neoscroll

         ; keypress
         p.substitute
         p.smart-splits
         p.terminal
         p.wilder

         ; ftplugin
         p.emmet
         p.pencil
         p.conjure
         ]))

(let [load (require :my.plugins_old)]
  ; (load.apm)
  ; (load.devicons)
  ; (load.fundo)
  ; (load.leap)
  ; (load.sandwich)
  ; (load.smart-splits)
  ; (load.substitute)
  (load.telescope)
  (load.mini)
  ; (load.neoscroll)
  ; (load.klog)
  ; (load.terminal)
  (load.treesitter)
  ; (load.wilder))
)
