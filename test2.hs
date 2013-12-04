countUnigram :: String -> [String] -> Int

countUnigram key items = length $ takeWhile (==key) items

main = return $ countUnigram "a" ["a", "a", "ba", "bb", "ab", "a"]
