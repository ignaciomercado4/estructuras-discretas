--Los ejercicios de recursión resueltos (a partir del punto 27 de la guía 2)--
--1--
sumatoria :: Int -> Int
sumatoria 0 = 0
sumatoria n = n + sumatoria (n - 1)

--2--
potencia :: Int -> Int -> Int
potencia _ 0 = 1
potencia x n = x * potencia x (n-1)

--3--
sumaPares :: Int -> Int
sumaPares 0 = 0
sumaPares n = 2*n + sumaPares (n-1)

--4--
euclides :: Int -> Int -> Int
euclides a 0 = a
euclides a b = euclides b (a `mod` b)   

--5--
prodImpares :: Int -> Int
prodImpares 1 = 1
prodImpares n 
    | n `mod` 2 /= 0 = n * prodImpares (n-1)
    | otherwise = prodImpares (n-1)

--6--
dobleFactorial :: Int -> Int
dobleFactorial 0 = 0
dobleFactorial 1 = 1
dobleFactorial 2 = 2
dobleFactorial n = n * dobleFactorial (n - 2)
