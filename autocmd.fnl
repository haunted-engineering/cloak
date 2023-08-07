(local nvim! (. (require :api) :nvim!))

(lambda augroup-default-opts! []
  {:clear true})

(lambda create-augroup! [name opts]
  (nvim! :create-augroup name opts))

{:augroup-default-opts! augroup-default-opts!
 :create-augroup! create-augroup!}
