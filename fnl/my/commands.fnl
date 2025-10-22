(local {: cmd!
        : z} (require "my.utils"))
(local fnl-conf (vim.fs.joinpath (vim.fn.stdpath "config") :fnl :my))

(cmd! :Z #(z $.args) {:nargs :*})

(cmd! :Config #(vim.cmd.edit
                 (vim.fs.joinpath fnl-conf $.args))
      {:nargs 1
       :complete #(let [files []]
                    (each [name type_ (vim.fs.dir fnl-conf)]
                      (when (= type_ :file)
                        (table.insert files name)))
                    files)})
