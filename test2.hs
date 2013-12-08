import Data.List
import Data.HashMap.Lazy

searchAndCountWords :: String -> [String] -> Int
getUnigramFrequency :: [String] -> HashMap String Int

getUnigramFrequency sList = fromList [(a, searchAndCountWords a sList) | a <- nub sList]

searchAndCountWords key items = length $ Data.List.filter (==key) items

main = return $ getUnigramFrequency ["a", "a", "ba", "bb", "ab", "a"]
