(local nsimport! (. (require :module) :nsimport!))
(local export! (nsimport! :module :export!))
(local nvim! (nsimport! :api :nvim!))

(lambda get-all-options-info! []
  (nvim! :get-all-options-info))

(lambda get-option-info2! [name opts]
  ;; @params
  ;; name: Option name
  ;; opts: Optional params
  ;;    - scope: 'global' | 'local'
  ;;    - win: window-ID
  ;;    - buf: Buffer number
  (nvim! :get-option-info2 name opts))

(lambda get-option-info2-opts! [scope win buf]
  {:scope scope :win win :buf buf})

(export! [:get-all-options-info!
          :get-option-info2!
          :get-option-info2-opts!])
