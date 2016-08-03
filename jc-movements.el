;;; jc-movements.el --- insertion and deletion helpers

;; Copyright 2016 John Cinnamond

;; Author: John Cinnamond
;; Version: 1.0.0

;;; Commentary:
;;
;; This adds some helpers I use for insertion and deletion.
;;
;; jc-line-above, jc-line-below - insert and indent a line above/below the current
;;
;; jc-zap-rest-of-buffer - zap to the end of the buffer

;;; License:

;; This file is not part of GNU Emacs.
;; However, it is distributed under the same license.

;; GNU Emacs is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

(defun jc-line-above ()
  (interactive)
  (beginning-of-line)
  (open-line 1)
  (indent-according-to-mode))

(defun jc-line-below ()
  (interactive)
  (end-of-line)
  (open-line 1)
  (next-line)
  (indent-according-to-mode))

(defun jc-zap-rest-of-buffer ()
  (interactive)
  (delete-char (- (point-max) (point))))

(define-minor-mode jc-movements
  "Insertion and deletion helpers"
  nil ; initially disabled
  " jc-movements")

(provide 'jc-movements)
;;; jc-movements.el ends here
