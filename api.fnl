(lambda nvim! [fn-name ...]
  (let [fn-name-str (tostring fn-name)
        nvim-fn-name (.. "nvim_" (string.gsub fn-name-str "-" "_"))]
    (vim.api.nvim_call_function nvim-fn-name [...])))

{:nvim! nvim!}
