(lambda export! [fn-names]
  (local exports {})
  (each [fn-name fn-names]
    (tset exports fn-name fn-name))
  exports)

(lambda nsimport! [ns fn-name]
  (. (require ns) fn-name))

(export! [:export!
          :nsimport!])
