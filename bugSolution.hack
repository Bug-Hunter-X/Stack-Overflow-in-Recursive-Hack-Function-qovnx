function foo(x: int): int {
  if (x <= 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This corrected version adds a more robust base case.  It handles not just 0, but all non-positive integers which stops the recursion and prevents stack overflow.  The use of `x <= 0` ensures that the function stops when x is 0 or any negative value, preventing infinite recursion.