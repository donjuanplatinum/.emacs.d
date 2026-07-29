;; (use-package mcp
;; :ensure t
;; :defer t
;; :custom (mcp-hub-servers
;;          `(("filesystem" . (:command "podman" 
;; 				     :args ("run"
;; 					    "-i"
;; 					    "--rm"
;; 					    "-p" "5566:5566"
;; 					    "--mount" "type=bind,src=/home/donjuan/git,dst=/projects/git"
;; 					    "docker.io/mcp/filesystem"
;; 					    "--root" "/projects"
;; 					    "--transport" "http" "--port" "5566"
;; 				    )
;; 				     :url "http://127.0.0.1:5566"
;;                             ))
;;        )
;;      )
;; :config
;; (require 'mcp-hub)
;; (require 'gptel-integrations)
;; :hook (after-init . mcp-hub-start-all-server))

(provide 'init-mcp)
