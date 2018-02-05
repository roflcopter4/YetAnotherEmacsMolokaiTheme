;;; myMolokai-theme.el --- Yet another molokai theme for Emacs 24

;; Copyright (C) 2013 Huang Bin

;; Author: Huang Bin <huangbin88@foxmail.com>
;; URL: https://github.com/hbin/Molokai-theme
;; Version: 0.8

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; This is another molokai dark theme
;; Equiped with my favorites.
;;; Requirements:
;;
;; Emacs 24

;; I (RoflCopter4) have made a number of edits to this theme, transferring
;; the same edits I made to my personal version of Molokai on Vim.

;;; Code:
(deftheme myMolokai "My own edit of the molokai color theme for Emacs 24")


(defcustom spacemacs-theme-custom-colors nil
  "Specify a list of custom colors."
  :type 'alist
  :group 'spacemacs-theme)

(defun custom-colors-override ()
  (mapcar (lambda (x) (list (car x) (cdr x)))
          spacemacs-theme-custom-colors))

(defun true-color-p ()
  (or
   (display-graphic-p)
   (= (tty-display-color-cells) 16777216)))



(let ((class '((class color) (min-colors 89)))
      ;; molokai palette
      (molokai-white          "#ffffff")
      (molokai-fg             "#f8f8f0")
      (molokai-red            "#ff0000")
      (molokai-pink           "#f92672")
      (molokai-orange+5       "#ef5939")
      (molokai-orange         "#fd971f")
      (molokai-yellow         "#ffff00")
      (molokai-darkgoldenrod  "#e6db74")
      (molokai-wheat          "#c4be89")
      (molokai-olive          "#808000")
      (molokai-chartreuse     "#a6e22e")
      (molokai-lime           "#00ff00")
      (molokai-green          "#008000")
      (molokai-darkwine       "#1e0010")
      (molokai-maroon         "#800000")
      (molokai-wine           "#960050")
      (molokai-teal           "#008080")
      (molokai-aqua           "#00ffff")
      (molokai-blue           "#66d9ef")
      (molokai-slateblue      "#7070f0")
      (molokai-purple         "#ae81ff")
      (molokai-palevioletred  "#d33682")
      (molokai-grey-2         "#bcbcbc")
      (molokai-grey-1         "#8f8f8f")
      (molokai-grey           "#808080")
      (molokai-grey+2         "#403d3d")
      (molokai-grey+3         "#4c4745")
      (molokai-grey+5         "#232526")
      ;; (molokai-bg             "#1b1d1e")
      ;; Use a darker background
      (molokai-bg             "#131515")
      (molokai-grey+10        "#080808")
      (molokai-dark           "#000000")

      ;; -- Below is used for comments!
      ;; -- So called (by me) "shiny grey"
      (molokai-base01         "#7E8E91")
      ;; -- So called "grey4"
      ;; (molokai-base01         "#658494")
      ;; -- grey5
      ;; (molokai-base01         "#aebbc5")

      (molokai-base02         "#455354")
      (molokai-base03         "#293739")
      (molokai-dodgerblue     "#13354a")



      ;; generic                            GUI       TERM
      (act1           "#222226" )
      (act2           "#5d4d7a" )
      (base           "#f8f8f0" )
      (base-dim       "#686868" )
      (bg1            "#1b1d1e" )
      (bg2            "#212026" )
      (bg3            "#100a14" )
      (bg4            "#0a0814" )
      (border         "#5d4d7a" )
      (cblk           "#cbc1d5" )
      (cblk-bg        "#2f2b33" )
      (cblk-ln        "#827591" )
      (cblk-ln-bg     "#373040" )
      (cursor         "#e3dedd" )
      (const          "#a45bad" )
      (comment        "#7E8E91" )
      (comment-bg     "#292e34" )
      (comp           "#c56ec3" )
      (err            "#e0211d" )
      (func           "#a6e22e" )
      (head1          "#4f97d7" )
      (head1-bg       "#293239" )
      (head2          "#2d9574" )
      (head2-bg       "#293235" )
      (head3          "#67b11d" )
      (head3-bg       "#293235" )
      (head4          "#b1951d" )
      (head4-bg       "#32322c" )
      (highlight      "#444155" )
      (highlight-dim  "#3b314d" )
      (keyword        "#f92672" )  ;; Molokai pink
      (lnum           "#403d3d" )
      (mat            "#86dc2f" )
      (meta           "#9f8766" )
      (str            "#2d9574" )
      (suc            "#86dc2f" )
      (ttip           "#9a9aba" )
      (ttip-sl        "#5e5079" )
      (ttip-bg        "#34323e" )
      (type           "#ce537a" )
      (var            "#7590db" )
      (war            "#dc752f" )

      ;; colors
      (aqua           "#2d9574" )
      (aqua-bg        "#293235" )
      (green          "#67b11d" )
      (green-bg       "#293235" )
      (green-bg-s     "#29422d" )
      (cyan           "#28def0" )
      (red            "#f2241f" )
      (red-bg         "#3c2a2c" )
      (red-bg-s       "#512e31" )
      (blue           "#4f97d7" )
      (blue-bg        "#293239" )
      (magenta        "#a31db1" )
      (yellow         "#b1951d" )
      (yellow-bg      "#32322c" )

      )



  (custom-theme-set-faces
   'myMolokai

   ;; base
   `(default ((t (:background ,molokai-bg :foreground ,molokai-fg))))
   `(cursor ((t (:background ,molokai-fg :foreground ,molokai-bg))))
   `(fringe ((t (:foreground ,molokai-base02 :background ,molokai-bg))))
   `(highlight ((t (:background ,molokai-grey))))
   ;; `(highlight ((t (:foreground, molokai-white :background ,molokai-orange))))
   `(region ((t (:background  ,molokai-grey+2))
             (t :inverse-video t)))
   `(warning ((t (:foreground ,molokai-palevioletred :weight bold))))

   ;; font lock
   `(font-lock-builtin-face ((t (:foreground ,molokai-chartreuse))))
   `(font-lock-comment-face ((t (:foreground ,molokai-base01))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,molokai-base01))))
   `(font-lock-constant-face ((t (:foreground ,molokai-purple))))
   `(font-lock-doc-string-face ((t (:foreground ,molokai-darkgoldenrod))))
   `(font-lock-function-name-face ((t (:foreground ,molokai-chartreuse))))
   `(font-lock-keyword-face ((t (:foreground ,molokai-pink :weight bold))))
   ;; `(font-lock-keyword-face ((t (:foreground ,molokai-pink))))
   `(font-lock-negation-char-face ((t (:foreground ,molokai-red :weight bold))))
   `(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))
   `(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
   `(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
   `(font-lock-string-face ((t (:foreground ,molokai-darkgoldenrod))))
   `(font-lock-type-face ((t (:foreground ,molokai-blue))))
   `(font-lock-variable-name-face ((t (:foreground ,molokai-orange))))
   `(font-lock-warning-face ((t (:foreground ,molokai-palevioletred :weight bold))))


   ;; SOME ADDITIONS
   `(my-backslash-escape-char-face ((t (:foreground ,molokai-blue))))
   `(my-backslash-escape-backslash-face ((t (:foreground ,molokai-blue))))
   `(my-format-code-format-face ((t (:foreground ,molokai-pink))))
   `(my-format-code-directive-face ((t (:foreground ,molokai-pink))))
   ;; `(my-format-code-format-face ((t (:foreground ,molokai-pink :weight bold))))
   ;; `(my-format-code-directive-face ((t (:foreground ,molokai-pink :weight bold))))


   ;; mode line
   `(mode-line ((t (:foreground ,molokai-fg
                                :background ,molokai-base03
                                :box nil))))
   `(mode-line-buffer-id ((t (:weight bold))))
   `(mode-line-inactive ((t (:foreground ,molokai-fg
                                         :background ,molokai-base02
                                         :box nil))))

   ;; search
   ;; `(isearch ((t (:foreground ,molokai-dark :background ,molokai-wheat :weight bold))))
   ;; `(isearch ((t(:foreground, molokai-white :background ,molokai-base02))))
   `(isearch ((t(:foreground,molokai-base02 :background ,molokai-white))))
   `(isearch-fail ((t (:foreground ,molokai-wine :background ,molokai-darkwine))))

   ;; linum-mode
   `(linum ((t (:foreground ,molokai-grey-2 :background ,molokai-grey+5))))

   ;; hl-line-mode
   `(hl-line-face ((,class (:background ,molokai-grey+5)) (t :weight bold)))
   `(hl-line ((,class (:background ,molokai-grey+5)) (t :weight bold)))

   ;; TODO
   ;; ido-mode
   ;; flycheck
   ;; show-paren
   ;; rainbow-delimiters
   ;; highlight-symbols

   ;; neotree
   `(neo-banner-face ((t (:foreground ,molokai-darkgoldenrod))))
   `(neo-header-face ((t (:foreground ,molokai-chartreuse))))
   `(neo-root-dir-face ((t (:foreground ,molokai-pink :weight bold))))
   `(neo-dir-link-face ((t (:foreground ,molokai-chartreuse))))
   `(neo-expand-btn-face ((t (:foreground ,molokai-orange+5 :weight bold))))
   
   ;; COPIED FROM OFFICIAL THINGY LAZZY LAAAAZY


   ;; custom-colors-override


;;;;; ahs
   `(ahs-face ((,t (:background ,highlight))))
   `(ahs-plugin-whole-buffer-face ((,t (:background ,mat :foreground ,bg1))))

;;;;; anzu-mode
   `(anzu-mode-line ((,t (:foreground ,yellow :weight bold))))

;;;;; auto-complete
   `(ac-completion-face ((,t (:background ,ttip-bg :foreground ,ttip))))

;;;;; avy
   `(avy-lead-face   ((,t (:background ,blue-bg :foreground ,magenta))))
   `(avy-lead-face-0 ((,t (:background ,blue-bg :foreground ,blue))))
   `(avy-lead-face-1 ((,t (:background ,blue-bg :foreground ,magenta))))
   `(avy-lead-face-2 ((,t (:background ,blue-bg :foreground ,blue))))

;;;;; cider
   `(cider-enlightened ((,t (:background nil :box (:color ,yellow :line-width -1 :style nil) :foreground ,yellow))))
   `(cider-enlightened-local ((,t (:foreground ,yellow))))
   `(cider-instrumented-face ((,t (:background nil :box (:color ,red :line-width -1 :style nil) :foreground ,red))))
   `(cider-result-overlay-face ((,t (:background nil :box (:color ,blue :line-width -1 :style nil) :foreground ,blue))))
   `(cider-test-error-face ((,t (:background ,war :foreground ,bg1))))
   `(cider-test-failure-face ((,t (:background ,err :foreground ,bg1))))
   `(cider-test-success-face ((,t (:background ,suc :foreground ,bg1))))
   `(cider-traced-face ((,t :box (:color ,cyan :line-width -1 :style nil))))

;;;;; company
   `(company-echo-common ((,t (:background ,base :foreground ,bg1))))
   `(company-preview ((,t (:background ,ttip-bg :foreground ,ttip))))
   `(company-preview-common ((,t (:background ,ttip-bg :foreground ,base))))
   ;; `(company-preview-search ((,t (:weight match))))
   `(company-scrollbar-bg ((,t (:background ,bg2))))
   `(company-scrollbar-fg ((,t (:background ,act2))))
   ;; `(company-template-field ((,t (:weight region))))
   `(company-tooltip ((,t (:background ,ttip-bg :foreground ,ttip))))
   `(company-tooltip-annotation ((,t (:foreground ,keyword))))
   `(company-tooltip-common ((,t (:background ,ttip-bg :foreground ,base))))
   `(company-tooltip-common-selection ((,t (:foreground ,base))))
   ;; `(company-tooltip-mouse ((,t (:weight highlight))))
   ;; `(company-tooltip-search ((,t (:weight match))))
   `(company-tooltip-selection ((,t (:background ,ttip-sl :foreground ,base))))

;;;;; diff
   `(diff-added             ((,t :background nil :foreground ,green)))
   `(diff-changed           ((,t :background nil :foreground ,keyword)))
   `(diff-header            ((,t :background ,cblk-ln-bg :foreground ,func)))
   `(diff-file-header       ((,t :background ,cblk-ln-bg :foreground ,cblk)))
   `(diff-indicator-added   ((,t :background nil :foreground ,green)))
   `(diff-indicator-changed ((,t :background nil :foreground ,keyword)))
   `(diff-indicator-removed ((,t :background nil :foreground ,red)))
   `(diff-refine-added      ((,t :background ,green :foreground ,bg4)))
   `(diff-refine-changed    ((,t :background ,keyword :foreground ,bg4)))
   `(diff-refine-removed    ((,t :background ,red :foreground ,bg4)))
   `(diff-removed           ((,t :background nil :foreground ,red)))

;;;;; diff-hl
   `(diff-hl-change ((,t :background ,blue-bg :foreground ,blue)))
   `(diff-hl-delete ((,t :background ,red-bg :foreground ,red)))
   `(diff-hl-insert ((,t :background ,green-bg :foreground ,green)))

;;;;; dired
   `(dired-directory ((,t (:foreground ,keyword :background ,bg1 :weight bold))))
   `(dired-flagged ((,t (:foreground ,red))))
   `(dired-header ((,t (:foreground ,comp :weight bold))))
   ;; `(dired-ignored ((,t (:weight shadow))))
   `(dired-mark ((,t (:foreground ,comp :weight bold))))
   `(dired-marked ((,t (:foreground ,magenta :weight bold))))
   `(dired-perm-write ((,t (:foreground ,base :underline t))))
   `(dired-symlink ((,t (:foreground ,cyan :background ,bg1 :weight bold))))
   `(dired-warning ((,t (:foreground ,war))))

;;;;; ediff
   `(ediff-current-diff-A ((,t(:background ,red-bg-s :foreground ,red))))
   `(ediff-current-diff-Ancestor ((,t(:background ,aqua-bg :foreground ,aqua))))
   `(ediff-current-diff-B ((,t(:background ,green-bg-s :foreground ,green))))
   `(ediff-current-diff-C ((,t(:background ,blue-bg :foreground ,blue))))
   `(ediff-even-diff-A ((,t(:background ,bg3))))
   `(ediff-even-diff-Ancestor ((,t(:background ,bg3))))
   `(ediff-even-diff-B ((,t(:background ,bg3))))
   `(ediff-even-diff-C ((,t(:background ,bg3))))
   `(ediff-fine-diff-A ((,t(:background nil :weight bold))))
   `(ediff-fine-diff-Ancestor ((,t(:background nil :weight bold))))
   `(ediff-fine-diff-B ((,t(:background nil :weight bold))))
   `(ediff-fine-diff-C ((,t(:background nil :weight bold))))
   `(ediff-odd-diff-A ((,t(:background ,bg4))))
   `(ediff-odd-diff-Ancestor ((,t(:background ,bg4))))
   `(ediff-odd-diff-B ((,t(:background ,bg4))))
   `(ediff-odd-diff-C ((,t(:background ,bg4))))

;;;;; ein
   `(ein:cell-input-area((,t (:background ,bg2))))
   `(ein:cell-input-prompt ((,t (:foreground ,suc))))
   `(ein:cell-output-prompt ((,t (:foreground ,err))))
   `(ein:notification-tab-normal ((,t (:foreground ,keyword))))
   `(ein:notification-tab-selected ((,t (:foreground ,suc :weight bold))))

;;;;; eldoc
   `(eldoc-highlight-function-argument ((,t (:foreground ,mat :weight bold))))

;;;;; elfeed
   `(elfeed-search-date-face ((,t (:foreground ,head2))))
   `(elfeed-search-feed-face ((,t (:foreground ,blue))))
   `(elfeed-search-tag-face ((,t (:foreground ,func))))
   `(elfeed-search-title-face ((,t (:foreground ,base-dim))))
   `(elfeed-search-unread-title-face ((,t (:foreground ,base))))

;;;;; enh-ruby
   `(enh-ruby-op-face ((,t (:background ,bg1 :foreground ,base))))
   `(enh-ruby-string-delimiter-face ((,t (:foreground ,str))))

;;;;; erc
   `(erc-input-face ((,t (:foreground ,func))))
   `(erc-my-nick-face ((,t (:foreground ,keyword))))
   `(erc-nick-default-face ((,t (:foreground ,keyword))))
   `(erc-nick-prefix-face ((,t (:foreground ,yellow))))
   `(erc-notice-face ((,t (:foreground ,str))))
   `(erc-prompt-face ((,t (:foreground ,mat :weight bold))))
   `(erc-timestamp-face ((,t (:foreground ,keyword))))

;;;;; eshell
   `(eshell-ls-archive ((,t (:foreground ,red :weight bold))))
   `(eshell-ls-backup ((,t (:weight font-lock-comment-face))))
   `(eshell-ls-clutter ((,t (:weight font-lock-comment-face))))
   `(eshell-ls-directory ((,t (:foreground ,keyword :weight bold))))
   `(eshell-ls-executable ((,t (:foreground ,suc :weight bold))))
   `(eshell-ls-missing ((,t (:weight font-lock-warning-face))))
   `(eshell-ls-product ((,t (:weight font-lock-doc-face))))
   `(eshell-ls-special ((,t (:foreground ,yellow :weight bold))))
   `(eshell-ls-symlink ((,t (:foreground ,cyan :weight bold))))
   `(eshell-ls-unreadable ((,t (:foreground ,base))))
   `(eshell-prompt ((,t (:foreground ,keyword :weight bold))))

;;;;; evil
   `(evil-ex-substitute-matches ((,t (:background ,red-bg :foreground ,red))))
   `(evil-ex-substitute-replacement ((,t (:background ,green-bg :foreground ,green))))

;;;;; flycheck
   ;; `(flycheck-error
   ;;   ((,(append '((supports :underline (:style line))) t)
   ;;     (:underline (:style line :color ,err)))
   ;;    (,t (:foreground ,base :background ,err :weight bold :underline t))))
   ;; `(flycheck-error-list-checker-name ((,t (:foreground ,keyword))))
   ;; `(flycheck-fringe-error ((,t (:foreground ,err :weight bold))))
   ;; `(flycheck-fringe-info ((,t (:foreground ,keyword :weight bold))))
   ;; `(flycheck-fringe-warning ((,t (:foreground ,war :weight bold))))
   ;; `(flycheck-info
   ;;   ((,(append '((supports :underline (:style line))) t)
   ;;     (:underline (:style line :color ,keyword)))
   ;;    (,t (:foreground ,base :background ,keyword :weight bold :underline t))))
   ;; `(flycheck-warning
   ;;   ((,(append '((supports :underline (:style line))) t)
   ;;     (:underline (:style line :color ,war)))
   ;;    (,t (:foreground ,base :background ,war :weight bold :underline t))))
   `(flycheck-error
     ((,(append '((supports :underline (:style line))) )
       (:underline (:style line :color ,err)))
      (,t (:foreground ,base :background ,err :weight bold :underline ))))
   `(flycheck-error-list-checker-name ((,t (:foreground ,keyword))))
   `(flycheck-fringe-error ((,t (:foreground ,err :weight bold))))
   `(flycheck-fringe-info ((,t (:foreground ,keyword :weight bold))))
   `(flycheck-fringe-warning ((,t (:foreground ,war :weight bold))))
   `(flycheck-info
     ((,(append '((supports :underline (:style line))) )
       (:underline (:style line :color ,keyword)))
      (,t (:foreground ,base :background ,keyword :weight bold :underline t))))
   `(flycheck-warning
     ((,(append '((supports :underline (:style line))) )
       (:underline (:style line :color ,war)))
      (,t (:foreground ,base :background ,war :weight bold :underline ))))


;;;;; jabber
   `(jabber-activity-face ((,t (:weight bold :foreground ,red))))
   `(jabber-activity-personal-face ((,t (:weight bold :foreground ,blue))))
   `(jabber-chat-error ((,t (:weight bold :foreground ,red))))
   `(jabber-chat-prompt-foreign ((,t (:weight bold :foreground ,red))))
   `(jabber-chat-prompt-local ((,t (:weight bold :foreground ,blue))))
   `(jabber-chat-prompt-system ((,t (:weight bold :foreground ,green))))
   `(jabber-chat-text-foreign ((,t (:foreground ,base))))
   `(jabber-chat-text-local ((,t (:foreground ,base))))
   `(jabber-rare-time-face ((,t (:foreground ,green))))
   `(jabber-roster-user-away ((,t (:foreground ,yellow))))
   `(jabber-roster-user-chatty ((,t (:weight bold :foreground ,green))))
   `(jabber-roster-user-dnd ((,t (:foreground ,red))))
   `(jabber-roster-user-error ((,t (:foreground ,err))))
   `(jabber-roster-user-offline ((,t (:foreground ,base))))
   `(jabber-roster-user-online ((,t (:weight bold :foreground ,green))))
   `(jabber-roster-user-xa ((,t (:foreground ,aqua))))

;;;;; git-gutter-fr
   `(git-gutter-fr:added ((,t (:foreground ,green :weight bold))))
   `(git-gutter-fr:deleted ((,t (:foreground ,war :weight bold))))
   `(git-gutter-fr:modified ((,t (:foreground ,keyword :weight bold))))

;;;;; git-timemachine
   `(git-timemachine-minibuffer-detail-face ((,t (:foreground ,blue :weight bold :background ,blue-bg))))

;;;;; gnus
   `(gnus-emphasis-highlight-words ((,t (:background ,suc :foreground ,bg1))))
   `(gnus-header-content ((,t (:foreground ,keyword))))
   `(gnus-header-from ((,t (:foreground ,var))))
   `(gnus-header-name ((,t (:foreground ,comp))))
   `(gnus-header-subject ((,t (:foreground ,func :weight bold))))
   `(gnus-summary-cancelled ((,t (:background ,war :foreground ,bg1))))

;;;;; guide-key
   `(guide-key/highlight-command-face ((,t (:foreground ,base))))
   `(guide-key/key-face ((,t (:foreground ,keyword))))
   `(guide-key/prefix-command-face ((,t (:foreground ,keyword :weight bold))))

;;;;; helm
   ;; `(helm-bookmark-directory ((,t (:weight helm-ff-directory))))
   `(helm-bookmark-file ((,t (:foreground ,base))))
   `(helm-bookmark-gnus ((,t (:foreground ,comp))))
   `(helm-bookmark-info ((,t (:foreground ,comp))))
   `(helm-bookmark-man ((,t (:foreground ,comp))))
   `(helm-bookmark-w3m ((,t (:foreground ,comp))))
   `(helm-buffer-directory ((,t (:foreground ,base :background ,bg1))))
   `(helm-buffer-file ((,t (:foreground ,base :background ,bg1))))
   `(helm-buffer-not-saved ((,t (:foreground ,comp :background ,bg1))))
   `(helm-buffer-process ((,t (:foreground ,keyword :background ,bg1))))
   `(helm-buffer-saved-out ((,t (:foreground ,base :background ,bg1))))
   `(helm-buffer-size ((,t (:foreground ,base :background ,bg1))))
   `(helm-candidate-number ((,t (:background ,bg1 :foreground ,keyword :weight bold))))
   `(helm-ff-directory ((,t (:foreground ,keyword :background ,bg1 :weight bold))))
   `(helm-ff-dotted-directory ((,t (:foreground ,keyword :background ,bg1 :weight bold))))
   `(helm-ff-dotted-symlink-directory ((,t (:foreground ,cyan :background ,bg1 :weight bold))))
   `(helm-ff-executable ((,t (:foreground ,suc :background ,bg1 :weight normal))))
   `(helm-ff-file ((,t (:foreground ,base :background ,bg1 :weight normal))))
   `(helm-ff-invalid-symlink ((,t (:foreground ,red :background ,bg1 :weight bold))))
   `(helm-ff-prefix ((,t (:foreground ,bg1 :background ,keyword :weight normal))))
   `(helm-ff-symlink ((,t (:foreground ,cyan :background ,bg1 :weight bold))))
   `(helm-grep-cmd-line ((,t (:foreground ,base :background ,bg1))))
   `(helm-grep-file ((,t (:foreground ,base :background ,bg1))))
   `(helm-grep-finish ((,t (:foreground ,base :background ,bg1))))
   `(helm-grep-lineno ((,t (:foreground ,type :background ,bg1 :weight bold))))
   ;; `(helm-grep-match ((,t (:foreground nil :background nil :weight helm-match))))
   `(helm-header ((,t (:foreground ,base :background ,bg1 :underline nil :box nil))))
   `(helm-header-line-left-margin ((,t (:foreground ,keyword :background ,nil))))
   `(helm-match ((,t (:background ,head1-bg :foreground ,head1))))
   `(helm-match-item ((,t (:background ,head1-bg :foreground ,head1))))
   `(helm-moccur-buffer ((,t (:foreground ,var :background ,bg1))))
   `(helm-selection ((,t (:background ,highlight))))
   `(helm-selection-line ((,t (:background ,bg2))))
   `(helm-separator ((,t (:foreground ,comp :background ,bg1))))
   `(helm-source-header ((,t (:background ,comp :foreground ,bg1 :weight bold))))
   `(helm-time-zone-current ((,t (:foreground ,keyword :background ,bg1))))
   `(helm-time-zone-home ((,t (:foreground ,comp :background ,bg1))))
   `(helm-visible-mark ((,t (:foreground ,keyword :background ,bg3))))

;;;;; helm-swoop
   `(helm-swoop-target-line-block-face ((,t (:foreground ,base :background ,highlight))))
   `(helm-swoop-target-line-face ((,t (:background ,highlight))))
   `(helm-swoop-target-word-face ((,t (:background ,highlight :foreground ,mat))))

;;;;; highlights
   `(hi-green  ((,t (:foreground ,green :background ,green-bg))))
   `(hi-yellow ((,t (:foreground ,yellow :background ,yellow-bg))))

;;;;; highlight-indentation
   `(highlight-indentation-face ((,t (:background ,comment-bg))))

;;;;; highlight-symbol
   `(highlight-symbol-face ((,t (:background ,bg2))))

;;;;; hydra
   `(hydra-face-blue ((,t (:foreground ,blue))))
   `(hydra-face-red ((,t (:foreground ,red))))

;;;;; ido
   `(ido-first-match ((,t (:foreground ,comp :weight bold))))
   `(ido-only-match ((,t (:foreground ,mat :weight bold))))
   `(ido-subdir ((,t (:foreground ,keyword))))
   `(ido-vertical-match-face ((,t (:foreground ,comp :underline nil))))

;;;;; info
   `(info-header-xref ((,t (:foreground ,func :underline t))))
   `(info-menu ((,t (:foreground ,suc))))
   `(info-node ((,t (:foreground ,func :weight bold))))
   `(info-quoted-name ((,t (:foreground ,keyword))))
   `(info-reference-item ((,t (:background nil :underline t :weight bold))))
   `(info-string ((,t (:foreground ,str))))
   `(info-title-1 ((,t (:height 1.4 :weight bold))))
   `(info-title-2 ((,t (:height 1.3 :weight bold))))
   `(info-title-3 ((,t (:height 1.3))))
   `(info-title-4 ((,t (:height 1.2))))

;;;;; ivy
   `(ivy-current-match ((,t (:background ,highlight :weight bold))))
   `(ivy-minibuffer-match-face-1 ((,t (:weight bold))))
   `(ivy-minibuffer-match-face-2 ((,t (:foreground ,head1 :underline t))))
   `(ivy-minibuffer-match-face-3 ((,t (:foreground ,head4 :underline t))))
   `(ivy-minibuffer-match-face-4 ((,t (:foreground ,head3 :underline t))))
   `(ivy-remote ((,t (:foreground ,cyan))))

;;;;; latex
   `(font-latex-bold-face ((,t (:foreground ,comp))))
   `(font-latex-italic-face ((,t (:foreground ,keyword :italic t))))
   `(font-latex-match-reference-keywords ((,t (:foreground ,const))))
   `(font-latex-match-variable-keywords ((,t (:foreground ,var))))
   `(font-latex-sectioning-0-face ((,t (:weight bold :foreground ,head3 :height ,(if spacemacs-theme-org-height 1.3 1.0) :background ,(when spacemacs-theme-org-highlight head3-bg)))))
   `(font-latex-sectioning-1-face ((,t (:weight bold :foreground ,head4 :height ,(if spacemacs-theme-org-height 1.3 1.0) :background ,(when spacemacs-theme-org-highlight head4-bg)))))
   `(font-latex-sectioning-2-face ((,t (:weight bold :foreground ,head1 :height ,(if spacemacs-theme-org-height 1.3 1.0) :background ,(when spacemacs-theme-org-highlight head1-bg)))))
   `(font-latex-sectioning-3-face ((,t (:weight bold :foreground ,head2 :height ,(if spacemacs-theme-org-height 1.2 1.0) :background ,(when spacemacs-theme-org-highlight head2-bg)))))
   `(font-latex-sectioning-4-face ((,t (:bold nil :foreground ,head3 :height ,(if spacemacs-theme-org-height 1.1 1.0) :background ,(when spacemacs-theme-org-highlight head3-bg)))))
   `(font-latex-sectioning-5-face ((,t (:bold nil :foreground ,head4 :background ,(when spacemacs-theme-org-highlight head4-bg)))))
   `(font-latex-string-face ((,t (:foreground ,str))))
   `(font-latex-warning-face ((,t (:foreground ,war))))

;;;;; linum-mode
   ;; `(linum ((,t (:foreground ,lnum :background ,bg2))))

;;;;; linum-relative
   ;; `(linum-relative-current-face ((,t (:foreground ,comp))))

;;;;; magit
   `(magit-blame-culprit ((,t :background ,yellow-bg :foreground ,yellow)))
   `(magit-blame-date    ((,t :background ,yellow-bg :foreground ,green)))
   `(magit-blame-hash    ((,t :background ,yellow-bg :foreground ,func)))
   `(magit-blame-header  ((,t :background ,yellow-bg :foreground ,green)))
   `(magit-blame-heading ((,t :background ,yellow-bg :foreground ,green)))
   `(magit-blame-name    ((,t :background ,yellow-bg :foreground ,yellow)))
   `(magit-blame-sha1    ((,t :background ,yellow-bg :foreground ,func)))
   `(magit-blame-subject ((,t :background ,yellow-bg :foreground ,yellow)))
   `(magit-blame-summary ((,t :background ,yellow-bg :foreground ,yellow)))
   `(magit-blame-time    ((,t :background ,yellow-bg :foreground ,green)))
   `(magit-branch ((,t (:foreground ,const :weight bold))))
   `(magit-branch-current ((,t (:background ,blue-bg :foreground ,blue :weight bold :box t))))
   `(magit-branch-local ((,t (:background ,blue-bg :foreground ,blue :weight bold))))
   `(magit-branch-remote ((,t (:background ,aqua-bg :foreground ,aqua :weight bold))))
   `(magit-diff-context-highlight ((,t (:background ,bg2 :foreground ,base))))
   `(magit-diff-file-header ((,t (:background ,comment-bg :foreground ,comment))))
   `(magit-diff-file-heading ((,t (:background ,comment-bg :foreground ,comment))))
   `(magit-diff-file-heading-highlight ((,t (:background ,comment-bg :foreground ,comment))))
   `(magit-diff-hunk-header ((,t (:background ,ttip-bg :foreground ,ttip))))
   `(magit-diff-hunk-heading ((,t (:background ,ttip-bg :foreground ,ttip))))
   `(magit-diff-hunk-heading-highlight ((,t (:background ,ttip-bg :foreground ,ttip))))
   `(magit-hash ((,t (:foreground ,var))))
   `(magit-hunk-heading           ((,t (:background ,bg3))))
   `(magit-hunk-heading-highlight ((,t (:background ,bg3))))
   `(magit-item-highlight ((,t :background ,bg2)))
   `(magit-log-author ((,t (:foreground ,func))))
   `(magit-log-head-label-head ((,t (:background ,yellow :foreground ,bg1 :weight bold))))
   `(magit-log-head-label-local ((,t (:background ,keyword :foreground ,bg1 :weight bold))))
   `(magit-log-head-label-remote ((,t (:background ,suc :foreground ,bg1 :weight bold))))
   `(magit-log-head-label-tags ((,t (:background ,magenta :foreground ,bg1 :weight bold))))
   `(magit-log-head-label-wip ((,t (:background ,cyan :foreground ,bg1 :weight bold))))
   `(magit-log-sha1 ((,t (:foreground ,str))))
   `(magit-process-ng ((,t (:foreground ,war :weight bold))))
   `(magit-process-ok ((,t (:foreground ,func :weight bold))))
   `(magit-reflog-amend ((,t (:foreground ,magenta))))
   `(magit-reflog-checkout ((,t (:foreground ,blue))))
   `(magit-reflog-cherry-pick ((,t (:foreground ,green))))
   `(magit-reflog-commit ((,t (:foreground ,green))))
   `(magit-reflog-merge ((,t (:foreground ,green))))
   `(magit-reflog-other ((,t (:foreground ,cyan))))
   `(magit-reflog-rebase ((,t (:foreground ,magenta))))
   `(magit-reflog-remote ((,t (:foreground ,cyan))))
   `(magit-reflog-reset ((,t (:foreground ,red))))
   `(magit-section-heading        ((,t (:foreground ,keyword :weight bold))))
   `(magit-section-highlight      ((,t (:background ,bg2))))
   `(magit-section-title ((,t (:background ,bg1 :foreground ,keyword :weight bold))))

;;;;; man
   `(Man-overstrike ((,t (:foreground ,head1 :weight bold))))
   `(Man-reverse ((,t (:foreground ,highlight))))
   `(Man-underline ((,t (:foreground ,comp :underline t))))

;;;;; markdown
   `(markdown-header-face-1 ((,t (:weight bold :foreground ,head1 :height ,(if spacemacs-theme-org-height 1.3 1.0) :background ,(when spacemacs-theme-org-highlight head1-bg)))))
   `(markdown-header-face-2 ((,t (:weight bold :foreground ,head2 :height ,(if spacemacs-theme-org-height 1.2 1.0) :background ,(when spacemacs-theme-org-highlight head2-bg)))))
   `(markdown-header-face-3 ((,t (:bold nil :foreground ,head3 :height ,(if spacemacs-theme-org-height 1.1 1.0) :background ,(when spacemacs-theme-org-highlight head3-bg)))))
   `(markdown-header-face-4 ((,t (:bold nil :foreground ,head4 :background ,(when spacemacs-theme-org-highlight head4-bg)))))
   `(markdown-header-face-5 ((,t (:bold nil :foreground ,head1))))
   `(markdown-header-face-6 ((,t (:bold nil :foreground ,head2))))

;;;;; mode-line
   `(mode-line           ((,t (:foreground ,base :background ,act1 :box (:color ,border :line-width 1)))))
   `(mode-line-buffer-id ((,t (:weight bold :foreground ,func))))
   `(mode-line-inactive  ((,t (:foreground ,base :background ,bg1  :box (:color ,border :line-width 1)))))

;;;;; mu4e
   `(mu4e-cited-1-face ((,t (:foreground ,base))))
   `(mu4e-cited-7-face ((,t (:foreground ,base))))
   `(mu4e-header-key-face ((,t (:foreground ,head2 :weight bold))))
   `(mu4e-header-marks-face ((,t (:foreground ,comp))))
   `(mu4e-unread-face ((,t (:foreground ,yellow :weight bold))))
   `(mu4e-view-url-number-face ((,t (:foreground ,comp))))

;;;;; notmuch
   `(notmuch-search-date ((,t (:foreground ,func))))
   `(notmuch-search-flagged-face ((,t (:weight extra-bold))))
   `(notmuch-search-non-matching-authors ((,t (:foreground ,base-dim))))
   `(notmuch-search-unread-face ((,t (:background ,highlight-dim :box ,border))))
   `(notmuch-tag-face ((,t (:foreground ,keyword))))
   `(notmuch-tag-flagged ((,t (:foreground ,war))))

;;;;; neotree
   `(neo-dir-link-face ((,t (:foreground ,keyword :weight bold))))
   `(neo-expand-btn-face ((,t (:foreground ,base))))
   `(neo-file-link-face ((,t (:foreground ,base))))
   `(neo-root-dir-face ((,t (:foreground ,func :weight bold))))

;;;;; org
   `(org-agenda-clocking ((,t (:background ,highlight :foreground ,comp))))
   `(org-agenda-date ((,t (:foreground ,var :height ,(if spacemacs-theme-org-agenda-height 1.1 1.0)))))
   `(org-agenda-date-today ((,t (:foreground ,keyword :weight bold :height ,(if spacemacs-theme-org-agenda-height 1.3 1.0)))))
   `(org-agenda-date-weekend ((,t (:weight bold :foreground ,var))))
   `(org-agenda-done ((,t (:foreground ,suc :height ,(if spacemacs-theme-org-agenda-height 1.2 1.0)))))
   `(org-agenda-structure ((,t (:weight bold :foreground ,comp))))
   `(org-block ((,t (:background ,cblk-bg :foreground ,cblk))))
   `(org-block-begin-line ((,t (:background ,cblk-ln-bg :foreground ,cblk-ln))))
   `(org-block-end-line ((,t (:background ,cblk-ln-bg :foreground ,cblk-ln))))
   `(org-clock-overlay ((,t (:foreground ,comp))))
   `(org-code ((,t (:foreground ,cyan))))
   `(org-column ((,t (:background ,highlight))))
   `(org-column-title ((,t (:background ,highlight))))
   `(org-date ((,t (:underline t :foreground ,var))))
   `(org-date-selected ((,t (:background ,func :foreground ,bg1))))
   `(org-document-info-keyword ((,t (:foreground ,meta))))
   `(org-document-title ((,t (:foreground ,func :weight bold :height ,(if spacemacs-theme-org-height 1.4 1.0) :underline t))))
   `(org-done ((,t (:foreground ,suc :weight bold :background ,green-bg))))
   `(org-ellipsis ((,t (:foreground ,keyword))))
   `(org-footnote  ((,t (:underline t :foreground ,base))))
   `(org-hide ((,t (:foreground ,base))))
   ;; `(org-kbd ((,t (:weight region :foreground ,base :box (:line-width 1 :style released-button)))))
   `(org-level-1 ((,t (:weight bold :foreground ,head1 :height ,(if spacemacs-theme-org-height 1.3 1.0) :background ,(when spacemacs-theme-org-highlight head1-bg)))))
   `(org-level-2 ((,t (:weight bold :foreground ,head2 :height ,(if spacemacs-theme-org-height 1.2 1.0) :background ,(when spacemacs-theme-org-highlight head2-bg)))))
   `(org-level-3 ((,t (:bold nil :foreground ,head3 :height ,(if spacemacs-theme-org-height 1.1 1.0) :background ,(when spacemacs-theme-org-highlight head3-bg)))))
   `(org-level-4 ((,t (:bold nil :foreground ,head4 :background ,(when spacemacs-theme-org-highlight head4-bg)))))
   `(org-level-5 ((,t (:bold nil :foreground ,head1))))
   `(org-level-6 ((,t (:bold nil :foreground ,head2))))
   `(org-level-7 ((,t (:bold nil :foreground ,head3))))
   `(org-level-8 ((,t (:bold nil :foreground ,head4))))
   `(org-link ((,t (:underline t :foreground ,comment))))
   `(org-meta-line ((,t (:foreground ,meta))))
   `(org-mode-line-clock-overrun ((,t (:foreground ,err))))
   `(org-priority ((,t (:foreground ,war :weight bold))))
   ;; `(org-quote ((,t (:weight org-block :slant italic))))
   `(org-quote ((,t (:slant italic))))
   `(org-scheduled ((,t (:foreground ,comp))))
   `(org-scheduled-today ((,t (:foreground ,func :height ,(if spacemacs-theme-org-agenda-height 1.2 1.0)))))
   `(org-sexp-date ((,t (:foreground ,base))))
   `(org-special-keyword ((,t (:foreground ,func))))
   `(org-table ((,t (:foreground ,base :background ,head1-bg))))
   `(org-time-grid ((,t (:foreground ,str))))
   `(org-todo ((,t (:foreground ,war :weight bold :background ,yellow-bg))))
   `(org-verbatim ((,t (:foreground ,keyword))))
   ;; `(org-verse ((,t (:weight org-block :slant italic))))
   `(org-verse ((,t (:slant italic))))
   `(org-warning ((,t (:foreground ,err))))

;;;;; perspective
   `(persp-selected-face ((,t (:weight bold :foreground ,func))))

;;;;; popup
   `(popup-enu-selection-face ((,t (:background ,ttip-sl :foreground ,base))))
   `(popup-face ((,t (:background ,ttip-bg :foreground ,ttip))))
   ;; `(popup-isearch-match ((,t (:weight match))))
   `(popup-menu-face ((,t (:background ,ttip-bg :foreground ,base))))
   ;; `(popup-menu-mouse-face ((,t (:weight highlight))))
   `(popup-scroll-bar-background-face ((,t (:background ,bg2))))
   `(popup-scroll-bar-foreground-face ((,t (:background ,act2))))
   `(popup-tip-face ((,t (:background ,ttip-sl :foreground ,base :bold nil :italic nil :underline nil))))

;;;;; powerline
   `(powerline-active1 ((,t (:background ,act2 :foreground ,base))))
   `(powerline-active2 ((,t (:background ,act2 :foreground ,base))))
   `(powerline-inactive1 ((,t (:background ,bg2 :foreground ,base))))
   `(powerline-inactive2 ((,t (:background ,bg2 :foreground ,base))))

;;;;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,t :foreground ,keyword)))
   `(rainbow-delimiters-depth-2-face ((,t :foreground ,func)))
   `(rainbow-delimiters-depth-3-face ((,t :foreground ,str)))
   `(rainbow-delimiters-depth-4-face ((,t :foreground ,green)))
   `(rainbow-delimiters-depth-5-face ((,t :foreground ,yellow)))
   `(rainbow-delimiters-depth-6-face ((,t :foreground ,keyword)))
   `(rainbow-delimiters-depth-7-face ((,t :foreground ,func)))
   `(rainbow-delimiters-depth-8-face ((,t :foreground ,str)))
   `(rainbow-delimiters-mismatched-face ((,t :foreground ,err :overline t)))
   `(rainbow-delimiters-unmatched-face ((,t :foreground ,err :overline t)))

;;;;; rcirc
   `(rcirc-bright-nick ((,t (:background ,aqua-bg :foreground ,cyan))))
   `(rcirc-dim-nick ((,t (:foreground ,base-dim))))
   `(rcirc-keyword ((,t (:background ,green-bg-s :foreground ,green))))
   `(rcirc-timestamp ((,t (:foreground ,keyword))))
   `(rcirc-track-keyword ((,t (:background ,green :foreground ,bg1))))
   `(rcirc-url ((,t (:weight link))))

;;;;; shm
   `(shm-current-face ((,t (:background ,green-bg-s))))
   `(shm-quarantine-face ((,t (:background ,red-bg-s))))

;;;;; show-paren
   `(show-paren-match ((,t (:background ,green-bg-s))))
   `(show-paren-mismatch ((,t (:background ,red-bg-s))))

;;;;; smartparens
   `(sp-pair-overlay-face ((,t (:background ,highlight :foreground nil))))
   `(sp-show-pair-match-face ((,t (:foreground ,mat :weight bold :underline t))))

;;;;; spaceline
   `(spaceline-flycheck-error  ((,t (:foreground ,err))))
   `(spaceline-flycheck-info   ((,t (:foreground ,keyword))))
   `(spaceline-flycheck-warning((,t (:foreground ,war))))
   `(spaceline-python-venv ((,t (:foreground ,comp))))

;;;;; spacemacs-specific
   `(spacemacs-transient-state-title-face ((,t (:background nil :foreground ,comp :box nil :weight bold))))

;;;;; swiper
   `(swiper-line-face ((,t (:background ,highlight :weight bold))))
   `(swiper-match-face-1 ((,t (:weight bold))))
   `(swiper-match-face-2 ((,t (:foreground ,head1 :underline t))))
   `(swiper-match-face-3 ((,t (:foreground ,head4 :underline t))))
   `(swiper-match-face-4 ((,t (:foreground ,head3 :underline t))))

;;;;; tabbar
   `(tabbar-default ((,t (:background ,bg1 :foreground ,head1 :height 0.9))))
   `(tabbar-button ((,t (:weight tabbar-default ))))
   `(tabbar-button-highlight ((,t (:weight tabbar-default))))
   `(tabbar-highlight ((,t (:underline t))))
   `(tabbar-selected ((,t (:weight tabbar-default :foreground ,func :weight bold))))
   `(tabbar-separator ((,t (:weight tabbar-default))))
   `(tabbar-unselected ((,t (:weight tabbar-default :background ,bg1 :slant italic :weight light))))

;;;;; term
   `(term ((,t (:foreground ,base :background ,bg1))))
   `(term-color-black ((,t (:foreground ,bg4))))
   `(term-color-blue ((,t (:foreground ,keyword))))
   `(term-color-cyan ((,t (:foreground ,cyan))))
   `(term-color-green ((,t (:foreground ,green))))
   `(term-color-magenta ((,t (:foreground ,magenta))))
   `(term-color-red ((,t (:foreground ,red))))
   `(term-color-white ((,t (:foreground ,base))))
   `(term-color-yellow ((,t (:foreground ,yellow))))

;;;;; web-mode
   `(web-mode-builtin-face ((,t (:weight ,font-lock-builtin-face))))
   `(web-mode-comment-face ((,t (:weight ,font-lock-comment-face))))
   `(web-mode-constant-face ((,t (:weight ,font-lock-constant-face))))
   `(web-mode-doctype-face ((,t (:weight ,font-lock-comment-face))))
   `(web-mode-function-name-face ((,t (:weight ,font-lock-function-name-face))))
   `(web-mode-html-attr-name-face ((,t (:foreground ,func))))
   `(web-mode-html-attr-value-face ((,t (:foreground ,keyword))))
   `(web-mode-html-tag-face ((,t (:foreground ,keyword))))
   `(web-mode-keyword-face ((,t (:foreground ,keyword))))
   `(web-mode-string-face ((,t (:foreground ,str))))
   `(web-mode-symbol-face ((,t (:foreground ,type))))
   `(web-mode-type-face ((,t (:weight ,font-lock-type-face))))
   `(web-mode-warning-face ((,t (:weight ,font-lock-warning-face))))

;;;;; which-key
   `(which-key-command-description-face ((,t (:foreground ,base))))
   `(which-key-group-description-face ((,t (:foreground ,keyword))))
   `(which-key-key-face ((,t (:foreground ,func :weight bold))))
   `(which-key-separator-face ((,t (:background nil :foreground ,str))))
   `(which-key-special-key-face ((,t (:background ,func :foreground ,bg1))))

;;;;; which-function-mode
   `(which-func ((,t (:foreground ,func))))

;;;;; whitespace-mode
   `(whitespace-empty ((,t (:background nil :foreground ,yellow))))
   `(whitespace-indentation ((,t (:background nil :foreground ,war))))
   `(whitespace-line ((,t (:background nil :foreground ,comp))))
   `(whitespace-newline ((,t (:background nil :foreground ,comp))))
   `(whitespace-space ((,t (:background nil :foreground ,act2))))
   `(whitespace-space-after-tab ((,t (:background nil :foreground ,yellow))))
   `(whitespace-space-before-tab ((,t (:background nil :foreground ,yellow))))
   `(whitespace-tab ((,t (:background nil))))
   `(whitespace-trailing ((,t (:background ,err :foreground ,war))))

;;;;; other, need more work
   `(ac-completion-face ((,t (:underline t :foreground ,keyword))))
   `(ffap ((,t (:foreground ,base))))
   `(flx-highlight-face ((,t (:foreground ,comp :underline nil))))
   `(icompletep-determined ((,t :foreground ,keyword)))
   `(js2-external-variable ((,t (:foreground ,comp))))
   `(js2-function-param ((,t (:foreground ,const))))
   `(js2-jsdoc-html-tag-delimiter ((,t (:foreground ,str))))
   `(js2-jsdoc-html-tag-name ((,t (:foreground ,keyword))))
   `(js2-jsdoc-value ((,t (:foreground ,str))))
   `(js2-private-function-call ((,t (:foreground ,const))))
   `(js2-private-member ((,t (:foreground ,base))))
   `(js3-error-face ((,t (:underline ,war))))
   `(js3-external-variable-face ((,t (:foreground ,var))))
   `(js3-function-param-face ((,t (:foreground ,keyword))))
   `(js3-instance-member-face ((,t (:foreground ,const))))
   `(js3-jsdoc-tag-face ((,t (:foreground ,keyword))))
   `(js3-warning-face ((,t (:underline ,keyword))))
   `(slime-repl-inputed-output-face ((,t (:foreground ,comp))))
   `(trailing-whitespace ((,t :foreground nil :background ,err)))
   `(undo-tree-visualizer-current-face ((,t :foreground ,keyword)))
   `(undo-tree-visualizer-default-face ((,t :foreground ,base)))
   `(undo-tree-visualizer-register-face ((,t :foreground ,comp)))
   `(undo-tree-visualizer-unmodified-face ((,t :foreground ,var)))
   ))




(defcustom myMolokai-theme-kit nil
  "Non-nil means load myMolokai-theme-kit UI component."
  :type 'boolean
  :group 'myMolokai-theme)

(defcustom myMolokai-theme-kit-file
  (concat (file-name-directory
           (or (buffer-file-name) load-file-name))
          "myMolokai-theme-kit.el")
  "The myMolokai-theme-kit-file."
  :type 'string
  :group 'myMolokai-theme)

(if (and myMolokai-theme-kit
         (file-exists-p myMolokai-theme-kit-file))
    (load-file myMolokai-theme-kit-file))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'myMolokai)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; myMolokai-theme.el ends here
