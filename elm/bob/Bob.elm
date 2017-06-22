module Bob exposing (..)

hey comment = 
  if String.trim comment == "" then
    "Fine. Be that way!"
  else if String.toUpper comment == comment && String.toLower comment /= comment then
    "Whoa, chill out!"
  else if String.endsWith "?" comment then
    "Sure."
  else
    "Whatever."
