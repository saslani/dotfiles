<<<<<<< HEAD
{:user {:plugins [[cider/cider-nrepl "0.12.0"]
                  [lein-try "0.4.3"]
                  [lein-exec "0.3.6"]
                  [lein-pprint "1.1.2"]]
        :dependencies [[org.clojure/tools.nrepl "0.2.12"]
                       [pjstadig/humane-test-output "0.7.1"]]
        :figwheel {:nrepl-middleware ["cider.nrepl/cider-middleware"]}
        :injections [(require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)
                     (use 'clojure.repl)
                     (use 'clojure.java.javadoc)
                     (use 'clojure.pprint)]
        :global-vars {*print-length* 100}}}


;; [lein-describe "0.3.0-SNAPSHOT"]
=======
{:user {:plugins [[cider/cider-nrepl "0.9.1"]
                  [lein-try "0.4.3"]
                  [lein-exec "0.3.5"]]
        :dependencies [[org.clojure/tools.nrepl "0.2.10"]
                       [pjstadig/humane-test-output "0.7.0"]]
        :injections [(require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)]
        :repl-options
        {:init
         (do
           (set! *print-length* 100))}}}

;; [lein-describe "0.3.0-SNAPSHOT"]
;; [lein-difftest "2.0.0"]
;; [lein-pprint "1.1.1"]
;; [compojure/lein-template "0.3.0"]
>>>>>>> c37cf388e2676cbe608c11393b6d4068a8b73553
;; [com.jakemccrary/lein-test-refresh "0.3.0"]
