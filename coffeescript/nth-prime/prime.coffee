class Prime
  @nth: (input)->
    throw 'Prime is not possible' if input < 1

    primeNumbers = []

    isPrime = (number)->
      primeNumbers.every (prime)-> number % prime != 0

    currentNumber = 2
    while primeNumbers.length < input
      primeNumbers.push(currentNumber) if isPrime currentNumber
      currentNumber++

    primeNumbers.pop()

module.exports = Prime
