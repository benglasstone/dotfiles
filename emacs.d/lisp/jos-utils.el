;;; jos-utils.el --- Collection of utility functions to do nice things

;; Copyright (C) 2016 Josaphat Valdivia

;; Author: Josaphat Valdivia <jos@josaphat.co>
;; Created: 24 Aug 2016

;; This file is not part of GNU Emacs.

;;   Licensed under the Apache License, Version 2.0 (the "License");
;;   you may not use this file except in compliance with the License.
;;   You may obtain a copy of the License at

;;       http://www.apache.org/licenses/LICENSE-2.0

;;   Unless required by applicable law or agreed to in writing, software
;;   distributed under the License is distributed on an "AS IS" BASIS,
;;   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;;   See the License for the specific language governing permissions and
;;   limitations under the License.

;;; Commentary:

;;; Code:
(defun jos/c-guards (macroname)
  "Inserts C/C++ header guards at the current location of Point.
This currently doesn't try to generate the macro name for you."
  (interactive "sGuard macro: ")
  (insert "#ifndef " (upcase macroname) "\n#define " (upcase macroname) "\n\n#endif\n")
  (previous-line)
  (previous-line))

(provide 'jos-utils)

;;; jos-utils.el ends here
