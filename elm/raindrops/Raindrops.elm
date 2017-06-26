module Raindrops exposing (..)

pling : Int -> String
pling i =
    if i % 3 == 0 then "Pling"
    else ""

plang : Int -> String
plang i =
    if i % 5 == 0 then "Plang"
    else ""

plong : Int -> String
plong i =
    if i % 7 == 0 then "Plong"
    else ""

raindrops : Int -> String
raindrops i =
    let plingPlangPlong = (pling i) ++ (plang i) ++ (plong i)
    in if String.isEmpty plingPlangPlong then toString i else plingPlangPlong
