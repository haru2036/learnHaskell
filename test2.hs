import Data.List

searchAndCountWords :: String -> [String] -> Int
getUnigramFrequency :: [String] -> [Int]

getUnigramFrequency sList= [searchAndCountWords a sList| a <- nub sList]

searchAndCountWords key items = length $ filter (==key) items

main = return $ getUnigramFrequency ["a", "a", "ba", "bb", "ab", "a"]
