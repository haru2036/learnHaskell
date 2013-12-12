import Data.List
import Data.Tuple
import Data.HashMap.Lazy

searchAndCountWords :: String -> [String] -> Int
searchAndCountWordsBigram :: (String, String) -> [(String, String)] -> Int
getUnigramFrequency :: [String] -> HashMap String Int
getBigramFrequency :: [(String, String)] -> HashMap (String, String) Int
getBigramList :: [String] -> [(String, String)]

getUnigramFrequency sList = fromList [(a, searchAndCountWords a sList) | a <- nub sList]

getBigramList sList = if length sList > 2 then (sList !! 0, sList !! 1) : (getBigramList (tail sList))   else [(sList !! 0, sList !! 1)]

getBigramFrequency sLists = fromList [(a, searchAndCountWordsBigram a sLists) | a <- nub sLists]

searchAndCountWords key items = length $ Data.List.filter (==key) items
searchAndCountWordsBigram key items = length $ Data.List.filter (==key) items

main = return $ getBigramFrequency (getBigramList ["a", "a", "ba", "bb", "ab", "a"])
