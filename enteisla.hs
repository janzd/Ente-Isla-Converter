module Main where
import System.Environment
import Data.Char
import Data.List

-- English <-> Ente Isla Translator
--
-- Version: 1.1
--
-- Author: kurapan (Twitter: @Matteasu)
--

translateToEnteIsla :: [Char] -> String
translateToEnteIsla [] = []
translateToEnteIsla (h:t) = replaceToEnteIsla h : translateToEnteIsla t

translateFromEnteIsla :: [Char] -> String
translateFromEnteIsla [] = []
translateFromEnteIsla (h:t) = replaceFromEnteIsla h : translateFromEnteIsla t

englishAlphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
enteislaAlphabet = ['a','z','y','x','e','w','v','t','i','s','r','q','p','n','o','m','l','k','j','h','u','g','f','d','c','b','A','Z','Y','X','E','W','V','T','I','S','R','Q','P','N','O','M','L','K','J','H','U','G','F','D','C','B']

replaceToEnteIsla :: Char -> Char
replaceToEnteIsla ' ' = ' '
replaceToEnteIsla x = replace_in x englishAlphabet enteislaAlphabet

replaceFromEnteIsla :: Char -> Char
replaceFromEnteIsla ' ' = ' '
replaceFromEnteIsla x = replace_in x enteislaAlphabet englishAlphabet

replace_in x [] [] = x
replace_in x (from_h:from_t) (to_h:to_t) | x == from_h = to_h
					 | otherwise = replace_in x from_t to_t
		
parseArgs :: [Char] -> Integer			 
parseArgs "-ent" = 1
parseArgs "-eng" = 0
parseArgs x = -1

translate :: Integer -> [String] -> [Char]
translate 1 [] = []
translate 0 [] = []
translate 1 [text] = (translateToEnteIsla text)
translate 0 [text] = (translateFromEnteIsla text)
translate (-1) [text] = "Error! Make sure your input is in correct format."
					 
main = do args <- getArgs       
 	  let transFlag = parseArgs (head args)
          let out = translate transFlag (tail args)
          putStrLn $ out

