;;; funcs.el --- notes layer packages file for Spacemacs.
;;
;; Copyright (C) 2016  Eduardo Ruiz
;;
;; Author: Eduardo Ruiz <eduarbo@gmail.com>
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; TODO add a function to open last journal

(defun notes//date-with-offset (offset)
  (time-add (current-time) (* offset 60 60 24)))

(cl-defun notes/journal-path (&optional (date (current-time)))
  "Get path to journal from date"
  (concat notes-directory
          (format-time-string notes-journal-filepath-format date)
          notes-journal-extension))

(defun notes//open-journal (offset)
  "Open or create journal. Create parent directory if not exists"
  (let* ((date (notes//date-with-offset offset))
         (filename (notes/journal-path date)))
    (unless (file-exists-p filename)
      (let ((dir (file-name-directory filename)))
        (unless (file-exists-p dir)
          (make-directory dir t))))
    (with-current-buffer (find-file filename)
      (when (= (buffer-size) 0)
        (insert (format-time-string notes-journal-title-format date))))))

(defun notes/open-tomorrow-journal ()
  "Open note of the day"
  (interactive)
  (notes//open-journal 1))

(defun notes/open-yesterday-journal ()
  "Open note of the day"
  (interactive)
  (notes//open-journal -1))

(defun notes/open-today-journal ()
  "Open note of the day"
  (interactive)
  (notes//open-journal 0))

(defun notes/open-darkest-secrets ()
  "Open my secrets file"
  (interactive)
  (find-file notes-secrets-path))
