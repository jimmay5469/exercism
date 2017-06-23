module Pangram exposing (..)

import String exposing (toLower, concat)
import List exposing (map, sort)
import Regex exposing (regex, find, HowMany(All))
import Set

findLetters : String -> List String
findLetters l = l |> find All (regex "[a-z]") |> map .match

unique : List String -> List String
unique l = l |> Set.fromList |> Set.toList

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
