void main() {

  // // The dynamic keyword can also be used as a type annotation explicitly.
  // // for example 
  // dynamic
  // //int
  //  a = 10;
  // print(a);
  // print(a.runtimeType);
  // //string
  // a= "Ali";
  // print(a);
  // print(a.runtimeType);
  // //bool
  // a=true;
  // print(a);
  // print(a.runtimeType);
  // a= 55.36;
  // print(a);
  // print(a.runtimeType);
  // //----------------------Difference Between Var & Dynamic--------------------------->
  // // -Var
  // // var variable once assigned, the type can not change 
  // // -Dynamic
  // // dynamic variable type can change over time
  //------------------------Constant-------------------------------------
  // -----------Final

//   //  When we do not want to change a variable in the future then we use final and const. It can be used in place of var or in addition to a type.
//   // A final variable can be set only one time where the variable is a compile-time constant. 
//   final c= "Abrar";
//   final d= "How are you";
//   print(c);
//   print(d);

//   // -----------const 
//   // The const is used to create compile-time constants. We can declare a value to compile-time constant such as number, string literal, a const variable, etc.
//   const v = 1000;
//   print(v);
//   // The const keyword is also used to create a constant value that cannot be changed after its creation.
//   // -------------------Difference Between Const & Final------------------------------>
//   // The Const keyword in Dart behaves exactly like the final keyword. 
//   // The only difference between final and const is that the const makes the variable constant from compile-time only.

 
// // Dart Operators
// // An operator is a symbol that is used to manipulating the values or performs operations on its
// // operand. The given expression: 5+4, in this expression, 5 and 4 are operands and "+" is the operator.

// //  --Types of Operators
// // Dart supports the following types of operators.
// //------------------------------------------------------------------------------------------------------------------------------------>
// // 1- Arithmetic Operators
// // for example
// int x=10 , y=5 ;
// //add (+) It adds the left operand to the right operand.
// print(x+y);

// //subtract (-) It subtracts the right operand from the left operand.
// print(x-y);

// //multiply (*)	It multiplies the one operand to another operand.
// print(x*y);

// // divide (/) It divides the first operand by the second operand and returns quotient.
// print(x/y);

// // Unary ->	It is used with a single operand changes the sign of it.
// print(-x-y);

// -----------------Dart Unary Operators (post and prefix)
// In Java, there are ++ and -- operators are known as increment and decrement operators and also known as unary operators, 
// respectively. Unary operators, operate on single operand where ++ adds 1 to operands and -- subtract 1 to operand respectively.
// The unary operators can be used in two ways - postfix and prefix. If ++ is used as a postfix(like x++), it returns the 
// value of operand first then increments the value of x. If -- is used as a prefix(like ++x), it increases the value of x.
// int p = 30;   
//    print(p++);                  //The postfix value  
     
// int o = 25;  
// print(++o);                 //The prefix value,  
         
// int z = 10;  
// print(--z);                  //The prefix value  
  
// int u = 12;                                           
//    print(u--);              //The postfix value
             

}