function modularCalculator(op, num1, num2, mod) {
  let result

  switch (op) {
    case '+':
      result = (num1 + num2) % mod
      break
    case '-':
      result = (num1 - num2) % mod
      if (result < 0) {
        result += mod
      }
      break
    case '*':
      result = (num1 * num2) % mod
      break
    default:
      throw new Error('Unsupported operation')
  }

  return result
}

console.log(modularCalculator('+', 10, 15, 12)) // Should return: 1
console.log(modularCalculator('-', 10, 15, 12)) // Should return: 7
console.log(modularCalculator('*', 10, 15, 12)) // Should return: 6
