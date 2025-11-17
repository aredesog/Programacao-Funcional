-- Função de Alta Ordem

-- Funções que recebem outras funções como argumentos ou retornam funções como resultado.
--Exemplo:
aplicaDuasVezes :: (a -> a) -> a -> a
aplicaDuasVezes f x = f (f x)

map even [1,2,3] = [False, True, False] --(Função map aplica a função even a cada elemento da lista)

-- Funcoes currificadas são funções que retornam outras funções.
-- Exemplo:
soma :: Int -> Int -> Int
soma x y = x + y

--FUnção de Alta Ordem Filter
filter :: (a -> Bool) -> [a] -> [a]
--Exemplo de uso:
filter even [1,2,3,4] -- [2,4] (filtra os elementos pares da lista)
filter (>2) [1,2,3,4] -- [3,4] (filtra os elementos maiores que 2 da lista)

--FUnção de Alta Ordem Foldl
foldl :: (b -> a -> b) -> b -> [a] -> b
--Exemplo de uso:
foldl (+) 0 [1,2,3,4] -- 10 (soma todos os elementos da lista)
foldl (*) 1 [1,2,3,4] -- 24 (multiplica todos os elementos da lista)


--Função de Alta Ordem Foldr
foldr :: (a -> b -> b) -> b -> [a] -> b
--Exemplo de uso:
foldr (+) 0 [1,2,3,4] -- 10 (soma todos os elementos da lista)
foldr (:) [] [1,2,3,4] -- [1,2,3,4] (reconstrói a lista original

--Função de Alta Ordem ZipWith
zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
--Exemplo de uso:
zipWith (+) [1,2,3] [4,5,6] -- [5,7,9] (soma os elementos correspondentes das duas listas)
zipWith (++) ["a","b","c"] ["d","e","f"] -- ["ad","be","cf"] (concatena os elementos correspondentes das duas listas)

--Exercícios:
