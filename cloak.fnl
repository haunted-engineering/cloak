(local cloak {})

(lambda cloakadd! [module]
  (tset cloak module (require module)))

(lambda cloak-deepadd! [fn-name module]
  (tset cloak fn-name (. (require module) fn-name)))

(cloak-deepadd! :nvim! :api)
(cloakadd! :window)
(cloakadd! :autocmd)
(cloakadd! :buffer)

cloak
