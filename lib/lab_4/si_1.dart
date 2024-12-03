// ${"  "}  this is string interpolation
void main() {

  double i1 = calculate_si(p: 1000, rate: 5);
  print("Simple Interest (default time = 1 year): $i1");

  double i2 = calculate_si(p: 2000, rate: 3.5, time: 2);
  print("Simple Interest (custom time): $i2");
}

//method for calculationg Simple Interest
double calculate_si({double? p, double? rate, double time = 1}) {
  return (p! * rate! * time) / 100;
}

