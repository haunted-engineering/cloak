(local nvim! (. (require :api) :nvim!))

(lambda win-call! [window fun]
  ;; @params
  ;; window: Window handle
  ;;    -   or 0 for curr window
  ;; fun: Function to call inside the window
  (nvim! :win-call window fun))

(lambda win-close! [window force]
  ;; @params
  ;; window: Window handle
  ;;    -   or 0 for curr window
  ;; force: bool
  ;;    -   Behave like ':close!'. The last window of a buffer
  ;;        with unwritten changes can be closed. The buffer
  ;;        will become hidden, even if 'hidden' is not set.
  (nvim! :win-close window force))

(lambda win-get-buf! [window]
  (nvim! :win-get-buf window))

{:win-call! win-call!
 :win-close! win-close!
 :win-get-buf! win-get-buf!}
