class Prime
  @nth: (input)->
    throw 'Prime is not possible' if input < 1

    primeNumbers = [2]

    isPrime = (number)->
      for prime in primeNumbers
        break if prime>Math.sqrt(number)
        return false if number % prime == 0
      return true

    currentNumber = 3
    while primeNumbers.length < input
      primeNumbers.push(currentNumber) if isPrime currentNumber
      currentNumber += 2

    primeNumbers.pop()

module.exports = Prime
