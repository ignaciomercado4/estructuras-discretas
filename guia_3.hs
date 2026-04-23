--Ejercicios a partir del punto 4a de la guía 3--
--Funciones tipo filtro--

--a--
soloPares :: [Int] -> [Int]
soloPares [] = []
soloPares (x:xs) 
    | x `mod` 2 == 0 = x : soloPares xs
    | otherwise      = soloPares xs

--b--
mayoresQue10 :: [Int] -> [Int]
mayoresQue10 [] = []
mayoresQue10 (x:xs) 
    | x > 10    = x : mayoresQue10 xs
    | otherwise = mayoresQue10 xs

--c--
mayoresQue :: Int -> [Int] -> [Int]
mayoresQue _ [] = []
mayoresQue n (x:xs)
    | x > n     = x : mayoresQue n xs
    | otherwise = mayoresQue n xs


--Ejercicios a partir del punto 5)a) de la guía 3--
--Funciones tipo mapeo--

--a--
cambiarSigno :: [Int] -> [Int]
cambiarSigno [] = []
cambiarSigno (x:xs) = -x : cambiarSigno xs

--b--
duplica :: [Int] -> [Int]
duplica [] = []
duplica (x:xs) = x * 2 : duplica xs

--c--
multiplica :: Int -> [Int] -> [Int]
multiplica _ [] = []
multiplica n (x:xs) = x * n : multiplica n xs


--Ejercicios a partir del punto 6)a) de la guía 3--
--Funciones tipo acumulador--

--a--
todosMenores10 :: [Int] -> Bool
todosMenores10 [] = True
todosMenores10 (x:xs)
    | x < 10    = todosMenores10 xs
    | otherwise = False

--b--
hay0 :: [Int] -> Bool
hay0 [] = False
hay0 (x:xs)
    | x /= 0    = hay0 xs
    | otherwise = True

--c--
prodCuadrados :: [Int] -> Int
prodCuadrados [] = 1
prodCuadrados (x:xs) = (x*x) * prodCuadrados xs


--Ejercicios a partir del punto 7)a) de la guía 3--

--a--
maximo :: [Int] -> Int
maximo [a] = a 
maximo (x:y:xs)
    | x > y     = maximo (x:xs)
    | otherwise = maximo (y:xs)
--Funcion de tipo acumulador--

--b--
sumaPares :: [(Int,Int)] -> Int
sumaPares [] = 0
sumaPares (x:xs) = fst x + snd x + sumaPares xs
--Funcion de tipo acumulador--

--c--
todos0y1 :: [Int] -> Bool
todos0y1 [] = True
todos0y1 (x:xs) 
    | x == 0 || x == 1  = todos0y1 xs
    | otherwise         = False
--Funcion de tipo acumulador--

--d--
quitar0s :: [Int] -> [Int]
quitar0s [] = []
quitar0s (x:xs)
    | x == 0    = quitar0s xs
    | otherwise = x : quitar0s xs 
--Funcion de tipo filtro--

--e--
ultimo :: [a] -> a
ultimo [] = error "Lista vacía"
ultimo [x] = x
ultimo (x:xs) = ultimo xs
--Funcion de tipo acumulador--

--f--
repetir :: Int -> Int -> [Int]
repetir 0 _ = []
repetir n x = x : repetir (n - 1) x
--Funcion de tipo generador--

--g--
concatenar :: [[a]] -> [a]
concatenar [] = []
concatenar (x:xs) = x ++ concatenar xs

--h--
rev :: [a] -> [a]
rev [] = []
rev (x:xs) = rev xs ++ [x]


--Funcion zip--
repartir :: [String] -> [String] -> [(String, String)]
repartir [] _ = []
repartir _ [] = []
repartir (x:xs) (y:ys) = (x,y) : repartir xs ys


--Funcion unzip--
segundo :: (a, b, c) -> b
segundo (_,b,_) = b

apellidos :: [(String, String, Int)] -> [String]
apellidos [] = []
apellidos (x:xs) = segundo x : apellidos xs


--Ejercicios a partir del punto 11 de la guía 3--

length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length' xs

obtenerValor :: [a] -> Int -> a
obtenerValor [] _ = error "Lista vacia"
obtenerValor (x:_) 0 = x
obtenerValor (_:xs) n = obtenerValor xs (n - 1)

head' :: [a] -> a
head' [] = error "Lista vacia"
head' (x:_) = x

tail' :: [a] -> [a]
tail' [] = error "Lista vacia"
tail' (_:xs) = xs

take' :: Int -> [a] -> [a]
take' 0 _ = []
take' _ [] = []
take' n (x:xs) = x : take' (n - 1) xs

drop' :: Int -> [a] -> [a]
drop' 0 xs = xs
drop' _ [] = []
drop' n (_:xs) = drop' (n - 1) xs

masmas :: [a] -> [a] -> [a]
masmas [] ys = ys
masmas (x:xs) ys = x : masmas xs ys


--Ejercicios a partir del punto 12)a) de la guía 3--

--a--
listasIguales :: Eq a => [a] -> [a] -> Bool
listasIguales [] [] = True
listasIguales (x:xs) (y:ys) = x == y && listasIguales xs ys
listasIguales _ _ = False

--b--
mejorNota :: [(String, Int, Int, Int)] -> [(String, Int)]
mejorNota [] = []
mejorNota ((n,a,b,c):xs) 
    | a >= b && a >= c = (n,a) : mejorNota xs
    | b >= a && b >= c = (n,b) : mejorNota xs
    | otherwise        = (n,c) : mejorNota xs

--c--
incPrim :: [(Int, Int)] -> [(Int, Int)]
incPrim [] = []
incPrim ((a,b):xs) = (a+1,b) : incPrim xs 

--d--
expandir :: String -> String
expandir [] = ""
expandir [x] = [x]
expandir (x:xs) = x : ' ' : expandir xs