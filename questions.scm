(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))


;; Problem 15
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 15
  (define (helper s x)
   (if (null? s) s (cons (list x (car s)) (helper (cdr s) (+ x 1)))))
   (helper s 0)
  )
  ; END PROBLEM 15

;; Problem 16

;; Merge two lists LIST1 and LIST2 according to COMP and return
;; the merged lists.
(define (merge comp list1 list2)
  ; BEGIN PROBLEM 16
   (cond ((eq? list2 nil) list1)
   ((eq? list1 nil) list2)
   ((comp (car list1) (car list2)) (cons (car list1) (merge comp (cdr list1) list2)))
   (else (cons (car list2) (merge comp list1 (cdr list2)))))
   )


  ; END PROBLEM 16


(merge < '(1 5 7 9) '(4 8 10))
; expect (1 4 5 7 8 9 10)
(merge > '(9 7 5 1) '(10 8 4 3))
; expect (10 9 8 7 5 4 3 1)

;; Problem 17

(define (nondecreaselist s)
    ; BEGIN PROBLEM 17

    (define (break_list list)

    (cond ((eq? (cdr list) nil) nil)
    ((<= (car list) (cadr list))
    (break_list (cdr list)))
    (else (cdr list))))
    
    (define (general_list list)

    (cond ((eq? (cdr list) nil) list)
    ((<= (car list) (cadr list))
    (cons (car list)(general_list (cdr list))))
    (else (cons (car list)nil))))


    (define (inc_list list)

    (cond ((eq? nil (break_list list))
    (cons (general_list list) nil))
    (else (cons (general_list list)
    (inc_list (break_list list))))))

    (inc_list s)
    )
    ; END PROBLEM 17
