--Uso de lambda  \x -> x + y

--1: USe map e uma expressão lambda para converter uma lista de stringsem uma lista com seus respectivos tamanhos:
tamanhos :: [String] -> [Int]
tamanhos lista = map (\x -> length x) lista

--2 : Use filter e uma labda para encontrar todos os numeros em uma lsita [1..50] que sao multiplos de 3 e 5 ao mesmo tempo:
multiplos :: [Int]
multiplos = filter (\x -> x `mod` 3 == 0 && x `mod` 5 == 0) [1..50]

--3: Criee uma função que recebe uma lista de tuplas [string, Int] e usa filter com uma labda para reter apenas os pares cuja srting tenha mais de 5 caracteres:
filtra :: [(String, Int)] -> [(String, Int)]
filtra lista = filter (\(s, n) -> length s > 5) lista