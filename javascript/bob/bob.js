var Bob = function() {};

Bob.prototype.isYell = function(input) {
  return input.toUpperCase() == input && input.toLowerCase() != input;
}

Bob.prototype.isQuestion = function(input) {
  return input[input.length-1] == '?';
}

Bob.prototype.isNothing = function(input) {
  return !input.trim();
}

Bob.prototype.hey = function(input) {
  if (this.isYell(input)) {
    return 'Whoa, chill out!'
  } else if (this.isQuestion(input)) {
    return 'Sure.'
  } else if (this.isNothing(input)) {
    return 'Fine. Be that way!';
  }
  return 'Whatever.';
};

module.exports = Bob;
