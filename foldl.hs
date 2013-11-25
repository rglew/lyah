module Main where

sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

sum2 :: (Num a) => [a] -> a
sum2 = foldl (+) 0

