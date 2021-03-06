module Album where

import Data.List.Split


albumLength :: (Num b) => [String] ->  b 
albumLength album = fromIntegral (sum $ conv2sec $ splitTracks album) 

conv2sec :: [[Int]] -> [Int]
conv2sec x = map (\[a,b] -> a*60+b) x  

splitTracks :: [String] -> [[Int]]
splitTracks t = [map read $ splitOn ":" x :: [Int] | x <- t]

minutesSeconds :: (Integral a, Show a) => a -> [String]
minutesSeconds s = words $ show (div s 60) ++ ":" ++ show (s-((div s 60) * 60)) 

