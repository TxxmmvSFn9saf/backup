var func = (function () {
  var count = 0;
  return function () {
      return count++;
  }
}());

console.log(func());
console.log(func());
console.log(func());
console.log(func());
console.log(func());
