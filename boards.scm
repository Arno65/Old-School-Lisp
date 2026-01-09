
;; ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ---
;; An initial chess board
;;
;; Using the 'scheme' language in DrRacket
;; 
;;
#lang scheme

(require "chess-pieces.scm")

(provide initial-board)


(define initial-board
  (list
   (list (piece white Rook Castling) (piece white Knight) (piece white Bishop) (piece white Queen)
         (piece white King Castling) (piece white Bishop) (piece white Knight) (piece white Rook Castling))
   (list (piece white Pawn First-Move) (piece white Pawn First-Move)
         (piece white Pawn First-Move) (piece white Pawn First-Move)
         (piece white Pawn First-Move) (piece white Pawn First-Move)
         (piece white Pawn First-Move) (piece white Pawn First-Move))
   (list empty empty empty empty empty empty empty empty)
   (list empty empty empty empty empty empty empty empty)
   (list empty empty empty empty empty empty empty empty)
   (list empty empty empty empty empty empty empty empty)
   (list (piece black Pawn First-Move) (piece black Pawn First-Move)
         (piece black Pawn First-Move) (piece black Pawn First-Move)
         (piece black Pawn First-Move) (piece black Pawn First-Move)
         (piece black Pawn First-Move) (piece black Pawn First-Move))
   (list (piece black Rook Castling) (piece black Knight) (piece black Bishop) (piece black Queen)
         (piece black King Castling) (piece black Bishop) (piece black Knight) (piece black Rook Castling))))

;; End of this code
