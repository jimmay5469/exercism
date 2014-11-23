class Prime
  @nth: (input)->
    throw 'Prime is not possible' if input < 1
    primeNumbers = []
    currentNumber = 2
    while primeNumbers.length < input
      primeNumbers.push(currentNumber) unless primeNumbers.some (prime)-> currentNumber % prime == 0
      currentNumber++
    primeNumbers.pop()

module.exports = Prime
