const R = require('ramda');

// multipleOf :: int, int -> boolean
const multipleOf = R.curry((x, y) => y % x == 0);

// multipleOf3or5 :: int -> boolean
const multipleOf3or5 = x => R.or(multipleOf(3)(x), multipleOf(5)(x));

// sumOfMultiples :: int, int -> int
const sumOfMultiples = R.compose(R.sum, R.filter(multipleOf3or5), R.range);

console.log(sumOfMultiples(1, 1000));