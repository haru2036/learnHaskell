searchAndCountWords :: String -> [String] -> Int

searchAndCountWords key items = length $ filter (==key) items

main = return $ searchAndCountWords "a" ["a", "a", "ba", "bb", "ab", "a"]
