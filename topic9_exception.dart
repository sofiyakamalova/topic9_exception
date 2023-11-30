import 'dart:io';

/*
//TASK1
void main() {
  print('Enter your age:');
  int n = int.parse(stdin.readLineSync()!);
  try {
    checkAge(n);
    print('You are an adult');
  } catch (e) {
    print((e as AgeException).errorMessage());
  }
}
class AgeException implements Exception {
  String errorMessage() {
    return "You are teenager yet";
  }
}
int checkAge(int a) {
  if (a < 18) {
    throw AgeException();
  }
  return a;
}

//TASK1 2-variant

main() {
  int n = int.parse(stdin.readLineSync()!);
  try {
    test_age(n);
  } catch (e) {
    print('You are teenager yet');
  }
}

void test_age(int age) {
  if (age < 18) {
    throw new FormatException();
  }
}


//TASK2
void main() {
  print('Enter your number:');
  String n = stdin.readLineSync()!;

  try {
    checkPhoneNumber(n);
    print('Phone number is correct');
  } catch (e) {
    print((e as phoneException).errorMessage());
  }
}

String checkPhoneNumber(String n1) {
  if (n1.length < 10) {
    throw phoneException();
  }
  return n1;
}

class phoneException implements Exception {
  String errorMessage() {
    return "Phone number is entered incorrectly";
  }
}
*/

void main() {
  print('Enter email:');
  String email = stdin.readLineSync()!;
  try {
    checkEmail(email);
    print('Correct email entered');
  } catch (e) {
    print((e as EmailException).errorMessage());
  }
}

String checkEmail(String n) {
  if (n.contains('@') && n.contains('.')) {
    return n;
  } else {
    throw EmailException();
  }
}

class EmailException implements Exception {
  String errorMessage() {
    return 'Email is entered incorectly';
  }
}
