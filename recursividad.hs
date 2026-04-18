--------------------
-----EJERCICIOS-----
--------------------

--1--
potencia :: Int -> Int -> Int
potencia _ 0 = 1
potencia x n =  x * potencia x (n-1)

--2--
euclides :: Int -> Int -> Int
euclides a b = 
    if b > 0 && b /= 0 then euclides b (a `mod` b)
    else a

--3--
and' :: [Bool] -> Bool
and' [True] = True
and' (x:xs) = 
    if x == True then and' xs
    else False

--4--
last' :: [a] -> a
last' [x] = x 
last' (x:xs) = last' xs

--5--
concat' :: [[a]] -> [a]
concat' [] = []
concat' (x:xs) = x ++ concat' xs

--6--
selecciona :: [a] -> Int -> a
selecciona (x:xs) 0 = x
selecciona (x:xs) n = selecciona xs (n - 1)

--7--
take' :: Int -> [a] -> [a]
take' 0 _ = []
take' n (x:xs) = x : (take' (n-1) xs)

--8--
replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n a  = a : (replicate' (n-1) a)

--9--
elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' n (x:xs) =
    if n == x then True
	else elem' n xs

--10--
refinada :: [Float] -> [Float]
refinada [] = []
refinada [x] = [x]
refinada (x:y:xs) = x : ((x + y) / 2) : refinada (y:xs)

----------FIN----------