module Pangram exposing (..)

import String exposing (toLower, concat)
import List exposing (map, sort)
import Regex exposing (Regex, regex, find, HowMany(All))
import Set exposing (fromList, toList)

letters : Regex
letters = regex "[a-z]"

findLetters : String -> List String
findLetters = find All letters >> map .match

unique : List String -> List String
unique = fromList >> toList

isPangram : String -> Bool
isPangram sentence =
    let
        sortedUniqueLowercasedLetters =
            sentence
                |> toLower
                |> findLetters
                |> unique
                |> sort
                |> concat
    in
        sortedUniqueLowercasedLetters == "abcdefghijklmnopqrstuvwxyz"
