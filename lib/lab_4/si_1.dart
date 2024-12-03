// Method to calculate simple interest

double calculateSimpleInterest({
  required double principal, // Named parameter (required)
  required double rate,      // Named parameter (required)
  double time = 1,           // Named parameter with default value
}) {
  return (principal * rate * time) / 100;
}

// ${"  "}  this is string interpolation
void main() {
  // Using named parameters with default value for 'time'
  double interest1 = calculateSimpleInterest(principal: 1000, rate: 5);
  print("Simple Interest (default time = 1 year): \$${interest1}");

  // Using named parameters, specifying all values
  double interest2 = calculateSimpleInterest(principal: 2000, rate: 3.5, time: 2);
  print("Simple Interest (custom time): \$${interest2}");
}
