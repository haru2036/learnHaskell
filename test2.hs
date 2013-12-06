searchAndCountWords :: String -> [String] -> Int
uniqueElements :: [String] -> [String]

uniqueElements list = nub list

searchAndCountWords key items = length $ filter (==key) items

main = return $ searchAndCountWords "a" ["a", "a", "ba", "bb", "ab", "a"]
