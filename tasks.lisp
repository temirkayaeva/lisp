; задачи 15 5 7 11 12 13 19 31 41 47 48

; 5: Oпределите функцию, которая увеличивает элементы исходного списка на единицy

(defun inc-list (lst) (
                       cond ((null lst) NIL)
                       (t (cons (+ (car lst) 1) 
                                (inc-list(cdr lst)))
                          )
                       )
  )

(inc-list '(1 2 3))

; 7: Oпределите функцию, удаляющую из исходного списка элементы с четными номерами

(defun del-even (lst) (
                       cond ((null lst) NIL)
                       (t (cons (car lst)
                                (del-even(cddr lst)))
                          )
                       )
  )

(del-even '(1 2 3 4 5 6))

; 12:  Определите функцию, заменяющую в исходном списке два подряд идущиходинаковых элемента одним

(defun task (lst) (
                   cond ((null lst) NIL)
                   ((equal (car lst) 
                           (cadr lst)
                           ) 
                    (cons (car lst) 
                          (task (cddr lst))
                          )
                    )
                   (t (cons (car lst) 
                            (task (cdr lst)))
                      )
                   )
  )

; 19: Определите функцию (ЛУКОВИЦА n), строящую N-уровневый вложенный список, элементом которого на самом глубоком уровне является N.

(defun task (n &optional (k n))
  (if (equal n 0) k
      (task (- n 1) (list k))))

(task 3)
