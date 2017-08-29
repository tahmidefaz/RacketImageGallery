#lang racket/gui
(require racket/gui/base)
(require racket/draw
         net/url)


;Gets pictures from the internet
(define pic1
  (read-bitmap (get-pure-port (string->url "http://uczniowie.moa.edu.pl/wp-content/uploads/2015/12/GN.jpg"))))

(define pic2
  (read-bitmap (get-pure-port (string->url "http://i.dailymail.co.uk/i/pix/2015/09/04/17/2BF93E3200000578-3222637-image-m-37_1441384996012.jpg"))))

(define pic3
  (read-bitmap (get-pure-port (string->url "https://media.overstockart.com/optimized/cache/data/product_images/KH3324-1000x1000.jpg"))))

(define pic4
  (read-bitmap (get-pure-port (string->url "http://i.imgur.com/03f3J.jpg"))))

(define pic5
  (read-bitmap (get-pure-port (string->url "https://www.tellwut.com/uploads/media/image/4025e1490474066o3423.jpg"))))

(define pic6
  (read-bitmap (get-pure-port (string->url "https://s-media-cache-ak0.pinimg.com/originals/be/ef/1b/beef1bf1d9832e421579034a73066cdb.jpg"))))

(define easter-egg
  (read-bitmap (get-pure-port (string->url "https://i.pinimg.com/736x/92/a3/bd/92a3bde07d4585375865249bcec0aa83--funny-cat-memes-funny-cats.jpg"))))

;Crates gui frame
(define frame (new frame%
                   [label "Racket GUI Image Gallery"]
                   [width 600]
                   [height 400]
                   ))

;Create Buttons
(define panel (new horizontal-panel% [parent frame]))
(new button% [parent panel]
             [label "Starry Night"]
             [callback (lambda (button event)
                         (send msg set-label pic1))])

(new button% [parent panel]
             [label "Cat Lisa"]
             [callback (lambda (button event)
                         (send msg set-label pic2))])

(new button% [parent panel]
             [label "Great Wave"]
             [callback (lambda (button event)
                         (send msg set-label pic3))])

(new button% [parent panel]
             [label "Catdalf"]
             [callback (lambda (button event)
                         (send msg set-label pic4))])

(new button% [parent panel]
             [label "The Last Supper"]
             [callback (lambda (button event)
                         (send msg set-label pic5))])

(new button% [parent panel]
             [label "Cat With a Pearl Earring"]
             [callback (lambda (button event)
                         (send msg set-label pic6))])

(new button% [parent panel]
             [label "Surprise Me!"]
             [callback (lambda (button event)
                         (send msg set-label easter-egg))])
;Exit Button
(new button% [parent panel]
             [label "Exit Gallery"]
             [callback (lambda (button event)
                         (exit))])

;Show Image
(define msg (new message% [parent frame]
                          [label pic3]))

(send frame show #t)
;(void (new message% [parent frame] [label logo]))

