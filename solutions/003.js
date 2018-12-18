const R = require('ramda')

// int, [int], int -> [int]
const getFactors = R.curry((factors, proposedDivisor, x) => {
    if (x === proposedDivisor) {
        factors.push(proposedDivisor)
        return factors;
    } else if (x % proposedDivisor === 0) {
        factors.push(proposedDivisor);
        return getFactors(factors, proposedDivisor, x/proposedDivisor);
    } else 
        return getFactors(factors, proposedDivisor+1, x);
});
const getPrimeFactors = getFactors([], 2);
const sortIntegersDesc = R.identity;
const largestOfPrimeFactors = R.compose(R.last, sortIntegersDesc, getPrimeFactors);
console.log(largestOfPrimeFactors(13195));