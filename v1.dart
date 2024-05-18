void main() {
  clearScreen();
  print("Truth table of Implication function (p -> q)");
  createTruthTable(implication);
  print('\n');
  print("Truth table of Biconditional function (p <-> q)");
  createTruthTable(biconditional);
  print("\n");
  print("Truth table of Conjunction function (p /\\ q)");
  createTruthTable((a, b) => a && b);
  print("\n");
  print("Truth table of Disjunction function (p \\/ q)");
  createTruthTable((a, b) => a || b);
}

bool implication(a, b) {
  return !a || b;
}

bool biconditional(a, b) {
  return (a && b) || (!b && !a);
}

void createTruthTable(fn) {
  print("P\tQ\t\tFunction");
  print("True\tTrue\t\t${fn.call(true, true)}");
  print("True\tFalse\t\t${fn.call(true, false)}");
  print("False\tTrue\t\t${fn.call(false, true)}");
  print("False\tFalse\t\t${fn.call(false, false)}");
}

void clearScreen() {
  print("\x1B[2J\x1B[0;0H");
}