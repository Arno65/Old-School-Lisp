;; ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ---
;; "opening-library.scm"
;;
;;  Creating a Chess engine in Lisp (using Scheme in Racket)
;;
;;  version 0.02a   2026-01-10    An opening library for my chess engine
;;                                A first minimal version, working jusr fine
;;  version 0.02b   2026-01-11    Added a few extra moves
;;  version 0.02c   2026-01-12    Swapped colour format (same as FEN)
;; 
;;  (cl) 2025-12-31, 2026-01-12 by Arno Jacobs
;; ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ---
;;
;; Using the 'scheme' language in DrRacket
;; 

#lang scheme

(provide opening-library)

;; ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ---
;; Some FEN examples
;; rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq -
;; r2qkb1r/3ppppp/b1n2n2/ppp5/PPP5/B1N2N2/3PPPPP/R2QKB1R w KQkq -
;; 3k4/R6R/3n4/8/8/8/8/K7 w - -


(define opening-library
  (list
;; e4
   (list "rnbqkbnrpppppppp................................PPPPPPPPRNBQKBNR" "e2e4") ;; white
   (list "rnbqkbnrpppppppp....................P...........PPPP.PPPRNBQKBNR" "e7e5") ;; black
   (list "rnbqkbnrpppp.ppp............p.......P...........PPPP.PPPRNBQKBNR" "g1f3") ;; alternating...
   (list "rnbqkbnrpppp.ppp............p.......P........N..PPPP.PPPRNBQKB.R" "b8c6")
   (list "r.bqkbnrpppp.ppp..n.........p.......P........N..PPPP.PPPRNBQKB.R" "f1b5")
   (list "r.bqkbnrpppp.ppp..n......B..p.......P........N..PPPP.PPPRNBQK..R" "g8f6")
   (list "r.bqkb.rpppp.ppp..n..n...B..p.......P........N..PPPP.PPPRNBQK..R" "d2d3")
   (list "r.bqkb.rpppp.ppp..n..n...B..p.......P......P.N..PPP..PPPRNBQK..R" "f8c5")
   (list "r.bqk..rpppp.ppp..n..n...Bb.p.......P......P.N..PPP..PPPRNBQK..R" "c2c3")
   (list "r.bqk..rpppp.ppp..n..n...Bb.p.......P.....PP.N..PP...PPPRNBQK..R" "e8g8") ;; O-O
   (list "r.bq.rk.pppp.ppp..n..n...Bb.p.......P.....PP.N..PP...PPPRNBQK..R" "e1g1") ;; O-O
   (list "r.bq.rk.pppp.ppp..n..n...Bb.p.......P.....PP.N..PP...PPPRNBQ.RK." "d7d5")
   (list "r.bq.rk.ppp..ppp..n..n...Bbpp.......P.....PP.N..PP...PPPRNBQ.RK." "b1d2")
   (list "r.bq.rk.ppp..ppp..n..n...Bbpp.......P.....PP.N..PP.N.PPPR.BQ.RK." "d5e4")
   (list "r.bq.rk.ppp..ppp..n..n...Bb.p.......p.....PP.N..PP.N.PPPR.BQ.RK." "d3e4")

;; d4
   (list "rnbqkbnrpppppppp...................P............PPP.PPPPRNBQKBNR" "d7d5")
   
;; c4
   (list "rnbqkbnrpppppppp..................P.............PP.PPPPPRNBQKBNR" "e7e5")

;; Nf3
   (list "rnbqkbnrpppppppp.............................N..PPPPPPPPRNBQKB.R" "g8f6")

   ))

;; End of this code
