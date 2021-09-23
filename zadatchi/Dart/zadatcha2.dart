import 'dart:io';

main(){
   var variable ;
 //this is a function for checking if a variable is numeric or not
  //это функция для проверки, является ли переменная числовой или нет 

  bool is_numeric(var s){
    if(s == null){
      return false;
    }
    return int.tryParse(s)!= null;
  }

  do{

  
  variable = stdin.readLineSync();

  if(is_numeric(variable) == true){
    print(variable);
  }

  else{
    print("Это не число");
  }
  
  }while(is_numeric(variable) == true || is_numeric(variable)==false );
 

}