// Versatile lists
specification list
imports
  bool
  nat
sorts
  List
  Elem
constructors
  nil : -> List // Empty list
hidden constructors
  cons' : Elem x List -> List // Head element and tail list
functions
  cons : Elem x List -> List // Head element and tail list
  head : List -> Elem? // Head element
  tail : List -> List? // List without head
  isNil : List -> Bool // Test for nil list
  length : List -> Nat // Number of elements in the list
  append : List x List -> List // Append two lists
  snoc : List x Elem -> List // Friend of cons
  last : List -> Elem? // Last element
  init : List -> List? // List without last
variables
  e : Elem
  l : List
  l1 : List
  l2 : List
equations
  head(cons(e, l)) = e
  tail(cons(e, l)) = l
  isNil(nil) = true
  isNil(cons(e, l)) = false
  length(nil) = zero
  length(cons(e, l)) = succ(length(l))
  append(nil, l) = l
  append(cons(e, l1), l2) = cons(e, append(l1, l2))
  cons(e, l) = if isNil(l) or greater(head(l), e) then cons'(e, l) else cons'(head(l), cons(e, tail(l)))
  snoc(l, e) = append(l, cons(e, nil))
  reverse(l) = if isNil(l) then nil else cons(last(l), reverse(init(l)))
  last(l) = if isNil(tail(l)) then head(l) else last(tail(l))
  init(l) = if isNil(tail(l)) then nil else cons(head(l), init(tail(l)))
