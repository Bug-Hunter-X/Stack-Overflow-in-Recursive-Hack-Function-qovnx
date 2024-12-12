function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will result in a stack overflow error for sufficiently large values of `x` because the recursive function `foo` does not have a base case that will stop the recursion from going on indefinitely. The base case `x == 0` only handles a single value. For any other value, the function calls itself again.  This leads to the function calling itself repeatedly until it exhausts the available stack space.