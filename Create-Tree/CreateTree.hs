module CreateTree where

data Tree a = EmptyTree | Node a (Tree a) (Tree a)

instance Functor Tree where
    fmap _ EmptyTree = EmptyTree
    fmap f (Node a (left) (right)) = Node (f a) (fmap f left) (fmap f right)

showValues :: Tree a-> [a]
showValues EmptyTree = []
showValues (Node a (left) (right) ) = showValues left ++ [a] ++ showValues right


createTree :: Tree Int
createTree =
    Node 5
        (Node 2 (Node 1 EmptyTree EmptyTree) (Node 3 EmptyTree EmptyTree))
        (Node 8 EmptyTree (Node 7 EmptyTree EmptyTree))