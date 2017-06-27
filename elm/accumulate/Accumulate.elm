module Accumulate exposing (..)

accumulate : (a -> b) -> List a -> List b
accumulate fn list =
    case list of
        [] -> []
        ( head :: tail ) ->
            let headResult = fn head
                tailResult = accumulate fn tail
            in headResult :: tailResult
