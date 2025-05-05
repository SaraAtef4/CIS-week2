import 'dart:io';

import 'package:task_2/task_2.dart' as task_2;

void main(List<String> arguments) {
  //problem1();
  //problem2();
  //problem3();
  //problem4();
  //problem5(yourList: []);
  //problem6(yourList: [2,1,0,4]);



}

/// Create a program that asks the user to enter their name and their age.
/// Print out a message that tells how many years they have to be 100 years old.
void problem1 (){
  print("please,enter your name then enter your age🥰");

/// ( استخدمت record اللي بيسمح بتخزين اكتر من قمة بداتا تايب مختلفة) ///
  var person =(stdin.readLineSync()!,int.parse(stdin.readLineSync()!));
  print("Hey ${person.$1} ⚡, You have ${100-person.$2} to be 100 years old!");

}


///Ask the user for a number and determine whether the number is even or not.
void problem2(){
  print("enter a number");
  // استخدمت (tryParse) فلو القيمة مش int هيرجع  null
  int? number=int.tryParse(stdin.readLineSync()!);

  if (number != null) {
    if (number % 2 == 0) {
      print('even number👍');
    } else {
      print('not even number😞');
    }
  } else {
    print('Invalid input or no input provided >> Please enter a valid number⚠️');
  }
}


///Create a program that asks the user for a number and then
///prints out a list of all the divisors of that number.
void problem3(){
print('enter a numer');
int? number = int.tryParse(stdin.readLineSync()!);
List<int> divisorsList=[];
if(number != null){
  for(int i=number;i>=1;i--){
    if(number%i==0){
      divisorsList.add(i);

    }
    else{
      continue;
    }
  }
  print( 'the divisors of number $number are:');
  for(int num in divisorsList){
    print(num);
  }
}
else{
  print('Invalid input or no input provided >> Please enter a valid number⚠️');
}

}

///*Take a list, say for example this one:
///a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]and write a program
///that prints out all the elements of the list that are less than 5.
void problem4(){
  List<int > numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  // استخدمت set عشان يطبع القيم بدون تكرار
  Set<int> less5 = {};
  for(int num in numbers){
    if(num<5){
      less5.add(num);
    }
    else{
      continue;
    }
  }

  print('the numbers that are less than 5 in the list are: $less5');
}


///Write a program that takes a list of numbers for example
///a = [5, 10, 15, 20, 25] *and makes a new list of only the first and last
/// elements of the given list. For practice, write this code inside a function.*
void problem5({required List<int> yourList}){
  List<int> first_last=[];

  if(yourList.isNotEmpty && yourList.length>=2){
    first_last.add(yourList[0]);
    first_last.add(yourList[yourList.length-1]);
    print('the first element in your lest is: ${first_last[0]}, and the last one is ${first_last[first_last.length-1]}');

  }
  else{
    print('⚠️⚠️ your list must have at least 2 elements');
  }

}


///Given a list of integers, write a function that finds the max and min
///integers in the list, without using any library functions in Dart.

void problem6({required List<int> yourList}){
  int max =0;
  int min =0;

  if(yourList.isNotEmpty && yourList.length>=2){
    for( int num in yourList) {
      if(num<min){
        min=num;
      }
      else if(num>max){
        max=num;
      }
    }
    print('min number is $min ... max number is $max');
  }
  else{
    print('⚠️⚠️ your list must have at least 2 elements');
  }

}
