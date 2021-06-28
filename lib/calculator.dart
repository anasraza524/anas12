


import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Cal extends StatefulWidget {
  

  @override
  _CalState createState() => _CalState();
}

class _CalState extends State<Cal> {
  var result = '';
var result2 = '';
  Widget btn(var text){
  return Container(
    
    height: 50,
    width: 50,
    
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
    
    color: Colors.black,
     border: Border.all(color:Colors.white,width: 1,),
    
   boxShadow: [
     BoxShadow(
       color:Colors.black.withOpacity(0.5),
       spreadRadius: 2,
       blurRadius: 7,
       offset: Offset(0,4),
     
     ),
     
   ],
  
    ),
        
    child: 
     
     TextButton(onPressed: (){
       setState((){
         result =result +text;
         result2 = result2 + text;
         
         });
     },child: Text(text,style: TextStyle(fontSize: 30,
     fontWeight: FontWeight.bold,
     color: Colors.grey.shade100,

     )
     
     )
     ));
 
 
              // 1 btn

}
Widget btn2(var text2){
  return Container(
    
    height: 50,
    width: 50,
    
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
    
    color: Colors.grey.shade100,
    border: Border.all(color:Colors.black,width: 1,),
   boxShadow: [
     BoxShadow(
       color:Colors.white.withOpacity(0.5),
       spreadRadius: 2,
       blurRadius: 7,
       offset: Offset(0,4),
     
     )
   ],
   
    ),
        
    child: 
     
     TextButton(onPressed: (){
setState(() {
  result = result + text2;
  result2 = result2 + text2;
});
       
     },child: Text(text2,style: TextStyle(fontSize: 30,
     fontWeight: FontWeight.bold,
     color: Colors.black,

     )
     
     )
     ));
 
  
}

           
                    //  2    btn

       Widget btn3(var text3){
  return Container(
    
    height:50,
    width: 80,
    
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
    
    color: Colors.grey.shade100,
    border: Border.all(color:Colors.black,width: 1,),
   boxShadow: [
     BoxShadow(
       color:Colors.white.withOpacity(0.5),
       spreadRadius: 2,
       blurRadius: 7,
       offset: Offset(0,5),
     
     )
   ],
   
    ),
        
    child: 
     
     TextButton(onPressed: (){

       setState(() {
         
         result=result +text3;
         result2 = result2 + text3;
       });
     },child: Text(text3,style: TextStyle(fontSize: 30,
     fontWeight: FontWeight.bold,
     color: Colors.black,

     )
     
     )
     ));
 
  
}

  //                   clear Button 
  //
   
  Widget btnAc(var text6){
  return Container(
    
    height:50,
    width: 80,
    
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
    
    color: Colors.grey.shade100,
    border: Border.all(color:Colors.black,width: 1,),
   boxShadow: [
     BoxShadow(
       color:Colors.white.withOpacity(0.5),
       spreadRadius: 2,
       blurRadius: 7,
       offset: Offset(0,5),
     
     )
   ],
   
    ),
        
    child: 
     
     TextButton(onPressed: (){

       setState(() {
         
         result='';
         result2 = '';
       });
     },child: Text(text6,style: TextStyle(fontSize: 30,
     fontWeight: FontWeight.bold,
     color: Colors.black,

     )
     
     )
     ));
 
  
} 
//                      = Botton
  output(){
Parser p = Parser();
Expression exp = p.parse(result);
ContextModel cm = ContextModel();
double eval =exp.evaluate(EvaluationType.REAL, cm);

setState(() {
  result = eval.toString();
});
} 
Widget btnev(var text5){
  return Container(
    
    height: 50,
    width: 50,
    
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
    
    color: Colors.grey.shade100,
    border: Border.all(color:Colors.black,width: 1,),
   boxShadow: [
     BoxShadow(
       color:Colors.white.withOpacity(0.5),
       spreadRadius: 2,
       blurRadius: 7,
       offset: Offset(0,4),
     
     )
   ],
   
    ),
        
    child: 
     
     TextButton(onPressed: output,child: Text(text5,style: TextStyle(fontSize: 30,
     fontWeight: FontWeight.bold,
     color: Colors.black,

     )
     
     )
     ));
 
  
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: 
      SingleChildScrollView(
        child: Column(
          
          children:[
            Container(
              margin: EdgeInsets.all(20),
              height: 570,
             
              
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
               
                )
              ],
             
            color: Colors.grey
              ),
              

            child:
           Stack(
            children:[

              
          Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomCenter,
                        child: Container(
                          height:570,
                          decoration: BoxDecoration(
                            border: Border.all(color:Colors.black,width: 2,),
                            borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  spreadRadius: 6,
                  blurRadius: 7,
               
                )
              ],
             color: Colors.black12,
         
              ),

              
                
                
                
                
                  child: Column(
                    children: [Align(alignment: Alignment.topCenter,),
              Text('C A L C U L A T O R',style: TextStyle(fontWeight: FontWeight.w700
              ,
              
              fontSize: 15,fontStyle: FontStyle.italic,
              shadows: [
                            Shadow(color:Colors.white,blurRadius:4,)
                          ])),
                      Padding(
                  padding: const EdgeInsets.only(top:70,bottom: 0),
                        child: Column(
                          
                        
                          children: [ Text(result,style: TextStyle(fontSize:50,
                          fontWeight: FontWeight.bold, ),),
                            Container(
              height: 398,
              
                              decoration: BoxDecoration( 
                                color: Colors.black12,
                                
                 
                                border:Border(top: BorderSide(width: 1,color:Colors.black)),
                              ),
                              child: 
                               Padding(
                                padding: const EdgeInsets.only(top:0,right:10,left:10,bottom:10,),
                                child: Column(
                                  
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                  Text(result2,style: TextStyle(fontSize:18
                                  ,
                          fontWeight: FontWeight.bold, ),),
Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          
                                          children: [
btn3('('),
btn3(')'),
btnAc('Ac'),


                                        ],
                                     
                                    ),
                                    
                                        Row(
                                          
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
btn('1'),
btn('2'),
btn('3'),
btn2('*'),


                                        ],
                                     
                                    ),
                                    Row(
                                  
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
btn('4'),
btn('5'),
btn('6'),
btn2('/'),

                                ],
                                ),
                                Row(
                                  
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
btn('7'),
btn('8'),
btn('9'),
btn2('-'),

                                ],
                                )
                                ,Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  
                                  children: [
btn('0'),


btn2('.'),
btnev('='),


btn2('+')





                                ],
                                ),
                                  ],
                                  
                                ),
                              ),
                              
                              
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  
                ),
              ),
            ),
         
          
          ])  )  ] ) ));
      
    
  }
}



