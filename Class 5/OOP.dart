// ignore_for_file: file_names, unused_local_variable

void main() {
  var student1 = Students(); // one object , student1 is an reference variable
  student1.id = 23;
  student1.name = 'ABRAR';
  print('${student1.id} and ${student1.name}');

  student1.study();
  student1.sleep();
}

// Define static Properties of student
class Students {
  late int id; //instant and field Variable , default value is null
  late String name;

  void study() {
    print('${this.name} is now studing');
  }

  void sleep() {
    print('${this.name} is now sleeping');
  }
}

//  class Student {
//    var Name;
//    var Age;
//    var Roll_nu;

//    // defining class function
//     showStdInfo() {
//         print("Student Name is : ${Name}");
//         print("Student Age is : ${Age}");
//         print("Student Roll Number is : ${Roll_nu}");

//                }
// }
// void main () {

//   // Creating object called std
//   var student = Student();
//   student.Name = "Peter";
//   student.Age =24;
//   student.Roll_nu = 90001;
// // Accessing class Function
//  std.showStdInfo();
// }
