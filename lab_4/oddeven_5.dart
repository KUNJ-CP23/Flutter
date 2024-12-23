import 'dart:io';

void main(){
  stdout.write('Enter the number of elements: ');
  int n = int.parse(stdin.readLineSync()!);

  List<int> num = [];
  print("Enter $n numbers:");

  for (int i = 0; i < n; i++) {
    stdout.write("Element ${i + 1}: ");
    num.add(int.parse(stdin.readLineSync()!));
  }

  count_odd_even(num);
}

//method to count odd and even
void count_odd_even(List<int> numbers){
  int c_o = 0;
  int c_e = 0;

  for(int num in numbers){
    if(num%2==0) c_e++;
    else c_o++;
  }
  print("Total evens : $c_e \n Total odds : $c_o");
}