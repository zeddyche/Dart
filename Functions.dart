// Task 1: Function to add two numbers
double addTwo(double num1, double num2) {
  return num1 + num2;
}

// Task 2: Function to subtract two numbers
double subtractTwo(double num1, double num2) {
  return num1 - num2;
}

// Task 3: Function to multiply two numbers
double multiplyTwo(double num1, double num2) {
  return num1 * num2;
}

// Task 4: Function to divide two numbers
double divideTwo(double num1, double num2) {
  if (num2 != 0) {
    return num1 / num2;
  } else {
    throw ArgumentError("Cannot divide by zero");
  }
}

// Task 5: Function to get the length of a string
int stringLength(String str) {
  return str.length;
}

// Task 6: Function to get the first element of a list
dynamic getFirstElement(List list) {
  if (list.isNotEmpty) {
    return list[0];
  } else {
    throw ArgumentError("List is empty");
  }
}

void main() {
  // Testing the functions
  print("Task 1: Adding 5 and 3 => ${addTwo(5, 3)}");
  print("Task 2: Subtracting 8 from 12 => ${subtractTwo(12, 8)}");
  print("Task 3: Multiplying 4 and 6 => ${multiplyTwo(4, 6)}");
  
  try {
    print("Task 4: Dividing 10 by 2 => ${divideTwo(10, 2)}");
    print("Task 4: Dividing 5 by 0 => ${divideTwo(5, 0)}"); // Should throw an error
  } catch (e) {
    print("Task 4: ${e.toString()}");
  }

  print("Task 5: Length of 'Hello World' => ${stringLength('Hello World')}");
  
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Task 6: First element of list $numbers => ${getFirstElement(numbers)}");
}
