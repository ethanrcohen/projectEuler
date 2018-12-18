const R = require('ramda');

const isEven = x => x % 2 == 0;
const add = (x,y) => x + y; 


function fibonacciLessThanN(limit) {
    var last = 0, num = 1, temp;
    var fibs = []
    while (num < limit) {
        fibs.push(num)
        temp = num;
        num = last + num;
        last = temp;

    }
    return fibs;
}

const sumOfFibonacciLessThanN = R.compose(R.sum, R.filter(isEven), fibonacciLessThanN);
console.log(sumOfFibonacciLessThanN(4000000));