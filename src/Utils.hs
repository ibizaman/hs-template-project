module Utils
    ( equal
    )
where

equal :: Eq a => a -> a -> Bool
equal = (==)
