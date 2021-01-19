(setq user-full-name "MZZ"
      user-mail-address "infinemen@hotmail.com"
      doom-theme 'doom-city-lights
      doom-font (font-spec :family "CodeNewRoman Nerd Font":size 15)
      display-line-numbers-type `relative
      dired-dwim-target t
      projectile-project-search-path '("/home/men/files/code/")
      org-directory "~/sync/org/todo/"
      org-agenda-files (list "~/sync/org/todo/CANCEL.org"
                             "~/sync/org/todo/Done.org"
                             "~/sync/org/todo/INBOX.org"
                             "~/sync/org/todo/MEET.org"
                             "~/sync/org/todo/PROJ.org"
                             "~/sync/org/todo/TODO.org"
                             "~/sync/org/todo/SOMEDAY.org"
                             "~/sync/org/todo/WAIT.org")
      org-roam-directory "~/sync/org/roam/"
)

(after! org
  (setq org-todo-keywords '((sequence "TODO(t)" "INBOX(i)" "WAIT(w)" "PROJ(p)" "MEET(m)" "SOMEDAY(s)" "|" "DONE(d)" "CANCEL(c)"))
        org-todo-keyword-faces
        '(
          ("TODO" :background "green" :foreground "#002000" :weight normal)
          ("INBOX" :foreground "#660099" :weight normal)
          ("PROJ" :foreground "#cc0000" :weight bold)
          ("SOMEDAY" :foreground "#00ccff" :weight normal)
          ("WAIT" :foreground "#7c7c75" :weight normal)
          ("DONE" :foreground "#50a14f" :weight normal)
          ("MEET" :foreground "#50a14f" :weight normal)
          ("CANCEL" :foreground "#CCCCCC" :weight normal)
         )

        org-capture-templates
        '(
          ("i" "INBOX" entry (file "~/sync/org/todo/INBOX.org")
           "** INBOX %?\nSCHEDULED: %^T\n" :empty-lines 1)
          ("t" "Todo" entry (file "~/sync/org/todo/TODO.org")
           "** TODO %?\nSCHEDULED: %^T\n" :empty-lines 1)
          ("p" "PROJ" entry (file "~/sync/org/todo/PROJ.org")
           "** PROJ %?\nSCHEDULED: %^T\n" :empty-lines 1)
          ("w" "WAIT" entry (file "~/sync/org/todo/WAIT.org")
           "** WAIT  %?\nSCHEDULED: %^T\n" :empty-lines 1)
          ("m" "MEET" entry (file "~/sync/org/todo/MEET.org")
           "** MEET %?\nDEADLINE: %^T\n" :empty-lines 1)
          ("s" "SOMEDAY" entry (file "~/sync/org/todo/SOMEDAY.org")
           "** SOMEDAY %?\nSCHEDULED: %^T\n" :empty-lines 1)
          ("n" "NOTE-t" entry (file "~/sync/org/todo/Notet.org")
           "* NOTE %?\n%U\n" :empty-lines 1)
          )
        org-refile-targets '((org-agenda-files :maxlevel . 3))
        org-refile-allow-creating-parent-nodes 'confirm
        org-archive-location (concat org-directory "archived.org:/:")
  )

  (use-package! org-super-agenda
    :after org-agenda
    :init
    (setq org-agenda-skip-scheduled-if-done t
          org-agenda-skip-deadline-if-done t
          org-agenda-include-deadlines t
          org-agenda-block-separator t
          org-agenda-compact-blocks nil
          org-agenda-start-day nil
          org-agenda-start-on-weekday nil
          org-super-agenda-group-property-name "ProjectId"
          org-agenda-span 1
          org-super-agenda-groups
           '(
              (:name "Today" :time-grid t :and (:scheduled today :todo ("TODO" "MEET")))
              (:name "DUESOON" :and (:todo "TODO" :deadline future) :order 1)
              (:name "PROJ" :todo "PROJ" :order 4)
              (:name "INBOX" :todo "INBOX" :order 5)
              (:name "WAIT" :todo "WAIT" :order 6)
              (:name "MEET" :todo "MEET" :order 3)
              (:name "SOMEDAY" :todo "SOMEDAY" :order 10)
              (:name "OVERDUE" :deadline past :scheduled past :order 2)
              )
   )
   :config
    (org-super-agenda-mode 1)

  )

  (use-package! org-fancy-priorities-mode
     :hook (org-mode . org-fancy-priorities-mode)
     :config (setq org-fancy-priorities-list '("🔥" "🌱" "x"))
  )

  (require 'ox-latex)
    (setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
                                  "xelatex -interaction nonstopmode %f")
    )
    (add-to-list 'org-latex-packages-alist '("UTF8" "ctex"))
)

(add-hook 'LaTeX-mode-hook (lambda()
    (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
    (setq TeX-command-default "XeLaTeX"
          TeX-save-query  nil
          TeX-show-compilation t
          TeX-PDF-mode t))
)

(after! company
  (setq company-idle-delay 0.5
        company-minimum-prefix-length 2)
        company-show-numbers t)
(setq-default history-length 1000)
(setq-default prescient-history-length 1000)
