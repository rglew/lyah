import Data.List

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

isIn :: (Eq a) => [a] -> [a] -> Bool
needle `isIn` haystack = any (needle `isPrefixOf`) (tails haystack)

