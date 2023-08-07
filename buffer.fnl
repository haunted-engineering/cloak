(local nsimport! (. (require :modules) :nsimport!))
(local export! (nsimport! :modules :export!))
(local nvim! (nsimport! :api :nvim!))

(lambda buf-attach! [buffer send-buffer opts]
  ;; @params
  ;; buffer: Buffer handle
  ;;    - or 0 for curr buffer
  ;; send-buffer: bool
  ;;    - True if the initial notification should contain the 
  ;;      whole buffer: first notification will be nvim_buf_lines_event.
  ;;      Else the first notification will be nvim_buf_changedtick_event.
  ;;      Not for Lua callbacks.
  ;; opts: table
  (nvim! :buf-attach buffer send-buffer opts))

(lambda buf-attach-opts [on fun preview?]
  ;; @params
  ;; on: One of
  ;;   - lines
  ;;   - bytes
  ;;   - changedtick
  ;;   - detach
  ;;   - reload
  ;; fun: Function to run
  (local opts {})
  (local on-str (.. "on_" on))
  (tset opts on-str fun)
  (if preview? (tset opts :preview true))
  opts)

(lambda buf-detach! [buffer]
  (nvim! :buf-detach buffer))

(lambda buf-call! [buffer fun]
  ;; @params
  ;; buffer: Buffer handle
  ;;    - or 0 for curr buffer
  ;; fun: Function
  ;;    - Function to call inside the buffer
  (nvim! :buf-call buffer fun))

(export! [:buf-attach!
          :buf-attach-opts
          :buf-detach!
          :buf-call!])
