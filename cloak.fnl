(local cloak {})

(tset cloak :nvim! (. (require :api) :nvim!))
(tset cloak :window (require :window))
(tset cloak :autocmd (require :autocmd))

cloak
