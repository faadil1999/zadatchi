import 'dart:math';
 
 
 main(){

  var rng = new Random();


 List listnumber = [];  
 List per_two = [];

//creating an array with a random number---- создание массива со случайным числом 
   for (var i = 0; i < 10; i++) {
    listnumber.add(rng.nextInt(100));
  } 

  //this function allows to return the modulo of a number by 2---- эта функция позволяет возвращать число по модулю 2 

 int verify_if_divide_per_two(int num ){
  
   return num % 2 ;

}

for(int i = 0 ; i < listnumber.length ; i++){

if(verify_if_divide_per_two(listnumber[i]) == 0)
{
  per_two.add(listnumber[i]);

}}
for(int i = 0; i < per_two.length  ; i++){
  print(per_two[i]);
} 

}