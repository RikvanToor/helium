class X a where
    f :: a -> Int

instance Num a => X (Maybe a) where
    f Nothing = 7
    f (Just x) = f x

main = f (Just 3)