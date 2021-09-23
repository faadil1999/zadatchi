import 'dart:io';

main(){
   var variable ;
  //this is an array where we will add some numericals values 
  List numberTab = [];

  //this is a function for checking if a variable is numeric or not
  //это функция для проверки, является ли переменная числовой или нет 

    bool is_numeric(var s){
    if(s == null){
      return false;
    }
    return int.tryParse(s)!= null;
  }

 
  do{

    stdout.writeln("Enter a variable");
  variable = stdin.readLineSync();
  if(is_numeric(variable) == true){
    numberTab.add(variable);
  }
  else{
    print("Это не число");
  }
  print("Длина массива: ${numberTab.length}");

  }while(variable != "exit");
 

    
}