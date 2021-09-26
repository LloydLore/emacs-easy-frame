;;; emacs-easy-frame.el --- makes emacs frame adjustment easy
;;
;; Copyright © 2021-2022 Luo Lloyd
;;
;; Author: Luo Lloyd <solo_luojie@icloud.com>
;; URL:

;; This file is not part of GNU Emacs.

;;; Commentary:

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

(defun arrange-frame (w h x y)
  "Set W the width, H the height, X the x-axis point, Y the y-axis point."
  (interactive)
  (let ((frame (selected-frame)))
    (delete-other-windows)
    (set-frame-position frame x y)
    (set-frame-size frame w h)))

(defun arrange-frame-br ()
  "Arrange the frame to bottom right."
  (interactive)
  (arrange-frame 75 15 -1 -35))

(defun lloyd/add-frame-x-shift-left()
  "Add the frame shift from right to left, using step of 5 pixels."
  (interactive)
  (let ((step-shift 5)
        (frame (selected-frame)))
    (set-frame-position frame
                        (- (car (frame-position)) step-shift)
                        (cdr (frame-position)))))

(defun lloyd/add-frame-x-shift-right()
  "Add the frame shift from left to right, using step of 5 pixels."
  (interactive)
  (let ((step-shift 5)
        (frame (selected-frame)))
    (set-frame-position frame
                        (+ (car (frame-position)) step-shift)
                        (cdr (frame-position)))))

(provide 'emacs-easy-frame)
;;; emacs-easy-frame ends here
