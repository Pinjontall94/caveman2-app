(defsystem "caveman2-app-test"
  :defsystem-depends-on ("prove-asdf")
  :author "Sam Johnson (She/Her)"
  :license ""
  :depends-on ("caveman2-app"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "caveman2-app"))))
  :description "Test system for caveman2-app"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
