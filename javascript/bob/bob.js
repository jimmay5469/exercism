var Bob = function() {};

Bob.prototype.hey = function(input) {
  if (input.toUpperCase() == input && input.toLowerCase() != input) {
    return 'Whoa, chill out!'
  } else if (input[input.length-1] == '?') {
    return 'Sure.'
  } else if (!input.trim()) {
    return 'Fine. Be that way!';
  }
  return 'Whatever.';
};

module.exports = Bob;
