--1--
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

--2--
sumaLista :: [Int] -> Int
sumaLista [] = 0
sumaLista (x:xs) = x + sumaLista xs

--3--
longitud :: [a] -> Int
longitud [] = 0
longitud (x:xs) = 1 + longitud xs

--4--
reversa :: [a] -> [a]
reversa [] = []
reversa (x:xs) = (reversa xs) ++ [x] 

--5--
maximo :: [Int] -> Int
maximo [] = -9223372036854775808 -- Límite inferior del tipo Int
maximo (x:xs) 
    | x > maximo xs = x
    | otherwise = maximo xs

--6--
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

--7--
aplanar :: [[a]] -> [a]
aplanar [] = []
aplanar (x:xs) = x ++ aplanar xs

--8--
eliminarConsecutivos :: Eq a => [a] -> [a]
eliminarConsecutivos [] = []
eliminarConsecutivos [x] = [x]
eliminarConsecutivos (x:y:xs)
    | x == y = eliminarConsecutivos (y:xs)
    | otherwise = x : eliminarConsecutivos (y:xs) 

--9--
insertarOrdenado :: Int -> [Int] -> [Int]
insertarOrdenado a [] = [a]
insertarOrdenado a (x:xs)
    | a <= x    = a : x : xs
    | otherwise = x : insertarOrdenado a xs

--10--
obtenerElemento :: [a] -> Int -> a
obtenerElemento (x:xs) n
    | n >= length (x:xs) = error "Índice fuera de límites"
    | n /= 0 = obtenerElemento xs (n - 1)
    | n == 0 = x

--11--
reemplazarElemento :: [a] -> a -> Int -> [a]
reemplazarElemento (x:xs) a n
    | n /= 0 =  x : reemplazarElemento xs a (n - 1)
    | n == 0 = a : xs
    | n >= length (x:xs) = error "Fuera de limites"

--12--
convertirString :: [Int] -> [String]
convertirString [] = []
convertirString (x:xs) 
    | x == 0    = ["Cero"] ++ convertirString xs ++ []
    | x == 1    = ["Uno"] ++ convertirString xs ++ []
    | x == 2    = ["Dos"] ++ convertirString xs ++ []
    | x == 3    = ["Tres"] ++ convertirString xs ++ []
    | x == 4    = ["Cuatro"] ++ convertirString xs ++ []
    | x == 5    = ["Cinco"] ++ convertirString xs ++ []
    | x == 6    = ["Seis"] ++ convertirString xs ++ []
    | x == 7    = ["Siete"] ++ convertirString xs ++ []
    | x == 8    = ["Ocho"] ++ convertirString xs ++ []
    | x == 9    = ["Nueve"] ++ convertirString xs ++ []
    | otherwise = ["No computado"] ++ convertirString xs ++ []

--13--
doble :: [Int] -> [Int]
doble [] = []
doble (x:xs) = (x * 2) : doble xs

--14--
concatenarDosVeces :: [String] -> [String]
concatenarDosVeces [] = []
concatenarDosVeces (x:xs) = (x <> x) : concatenarDosVeces xs

--15--
soloPrimeraLetra :: [String] -> [Char]
soloPrimeraLetra [] = []
soloPrimeraLetra (x:xs) = take 1 x ++ soloPrimeraLetra xs ++ []