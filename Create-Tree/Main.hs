import CreateTree

main :: IO ()
main = do
   let myTree = createTree
   -- testing increment all feature
   -- let newTree = incAll myTree
   let values = showValues myTree
   putStrLn "Values in the tree (in-order traversal):"
   mapM_ print values
