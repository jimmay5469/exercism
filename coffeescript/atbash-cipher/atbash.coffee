module.exports =
  encode: (input)->
    cipher = 'abcdefghijklmnopqrstuvwxyz'
    input
    .toLowerCase()
    .match /\w{1}/g
    .map (letter)->
      indx = cipher.indexOf(letter)
      if indx < 0 then letter else cipher[25-indx]
    .join ''
    .match /.{5}|.+/g
    .join ' '
