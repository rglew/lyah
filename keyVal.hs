module Main where

import Data.List 
import Data.Char

phoneBook = 	[
		("betty", "555-2938"),
		("bonnie", "452-2928"),
		("patsy", "493-2928"),
		("lucille", "205-2928"),
		("wendy", "939-8282"),
		("penny", "853-2492")
		]

findKey :: (Eq k) => k -> [(k, v)] -> v
findKey key xs = snd . head . filter (\(k, v) -> key == k) $ xs

findKey2 :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey2 key xs = foldr (\(k, v) acc -> if key == k then Just v else acc) Nothing xs