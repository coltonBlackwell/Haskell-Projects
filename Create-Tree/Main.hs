import CreateTree

main :: IO ()
main = do
   let myTree = createTree
   let values = showValues myTree
   putStrLn "Values in the tree (in-order traversal):"
   mapM_ print values