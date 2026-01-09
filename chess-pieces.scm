
;; ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ---
;; The basic pieces dataset
;;
;; Using the 'scheme' language in DrRacket
;; 
#lang scheme

(provide piece)

(provide white)
(provide black)
(provide King)
(provide Queen)
(provide Bishop)
(provide Knight)
(provide Rook)
(provide Pawn)
(provide empty)
(provide outside)
(provide First-Move)
(provide En-Passant)
(provide Castling)


;;; -- Some definitions --
(define white    1)
(define black   -1)

(define King     6)
(define Queen    5)
(define Bishop   4)
(define Knight   3)
(define Rook     2)
(define Pawn     1)
(define empty    0)
(define outside -9) ;; Outside of the board

;; Piece states
(define First-Move 10)
(define En-Passant 20)
(define Castling   30)

;; A helper function for creating a piece
;; Either 2 or 3 parameters
(define (piece . characteristics)
  (if (= 2 (length characteristics))
      (* (first characteristics) (second characteristics))
      (if (= 3 (length characteristics))
          (* (first characteristics) (+ (second characteristics) (third characteristics)))
          empty)))

;; End of this code
