import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tween_animation/tanker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter = 0.0;
  double height=0.0;
  final tween=Tween<double>(begin:0 ,end:2*pi );
  final tweenOpecity=Tween<double>(begin: 1,end: 0);
  Color newColor=Colors.red;
  double sliderValue=0.0;
final fuelTankImage='https://tse1.mm.bing.net/th?id=OIP.bOodEhkU4I20zUGHN2tvNwHaGi&pid=Api&P=0&h=220';


  double height2=80.0;
  double price=0.0;
  bool isGreater=true;
  final imagePath='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3i93RXuf-vV7Bg8chrpElotatCr8vR9CGZA&usqp=CAU';
  

  @override
  void initState() {
    
    super.initState();
    Timer.periodic(const Duration(milliseconds: 300), (timer) { 
      setState(() {
        
         if (height<=670) {
          height+=20;
           
         }
          
       

      });
      
    });
    Timer.periodic(const Duration(milliseconds:300), (timer) {
      setState(() {
        if (price<=95) {
          price+=5;
          
        }
         if (height2>=400) {
          isGreater=false;
          
        }
        if (isGreater) {
          height2+=20;
          
        }
        else{
          height2-=10;
          if (height2<=77) {
            timer.cancel();
            
            
          }
         
        }
      });
     });
  }

  void _incrementCounter() {
  setState(() {
  //  height+=10;
  });
  }

  @override
  Widget build(BuildContext context) {
    ColorTween colorTween=ColorTween(begin: Colors.amber,end: newColor);
    return Scaffold(
     
      body: Stack(
       
        children: [
          
          
         
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
             
             //  SizedBox(width: 80,),
            // MYTanker(height: height),
               const SizedBox(width: 200,height: 100,),
               Column(children: [
                SizedBox(height: 200,),
                Stack(children: [
                
                  SizedBox(width: 300,height: 400,child: Image.network('https://tse4.mm.bing.net/th?id=OIP.O5NNJoiJOAA_0KdCLJmkDAHaHa&pid=Api&P=0&h=220',fit: BoxFit.fill,),)
                    ,Positioned(top: 120,left: 35,child:Container(width:240 ,height: 180,decoration: BoxDecoration(color: Colors.black,),
                  child: Column(children: [
                    SizedBox(height: 70,),
                                     const Text('Temprature in °C ',style: TextStyle(color: Colors.red 
                                     ,fontSize: 30,fontWeight: FontWeight.bold,fontStyle:FontStyle.italic ),),
                        Text('$price°C',style: const TextStyle(fontSize: 40,fontStyle:FontStyle.italic,color: Colors.red ),)
                  
                  ],)
                  ,)
                  
                   ),
                ],)
               ],),
         
        
       
         Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 80,),
                 Stack(children: [
                 
                  
                 
                  Column(
                  
                    children: [
                      SizedBox(height: 460,),
                      
                      Container(height: 70,width: 75,decoration: 
                      BoxDecoration(color: Colors.grey,borderRadius: BorderRadiusDirectional.circular(50)),
                     
                      
                       ),
                       
                      
                    ],
                    
                  )  ,
                  
                   Positioned(left: 13,top: 100,child: Container(width: 50,height: 420,
                  decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadiusDirectional.circular(360)),
                     child: Column(mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                      Center(child: Container(width: 33,height: height2,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadiusDirectional.circular(360)) ,))
                     ],),)
                  ,) ,
                  Positioned(top: 42,left: 26,child: Container(width: 20,height: 70,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadiusDirectional.circular(360)),)),
                   const Positioned(top: 120,child: Text("100°C--",style: TextStyle(fontSize: 15,color: Colors.blue),),),
                   const Positioned(top: 180,child: Text("80°C--",style: TextStyle(fontSize: 15,color: Colors.blue),),),
                   const Positioned(top: 240,child: Text("60°C--",style: TextStyle(fontSize: 15,color: Colors.blue),),),
                   const Positioned(top: 300,child: Text("40°C--",style: TextStyle(fontSize: 15,color: Colors.blue),),),
                   const Positioned(top: 360,child: Text("20°C--",style: TextStyle(fontSize: 15,color: Colors.blue),),),
                   const Positioned(top: 420,child: Text("0°C--",style: TextStyle(fontSize: 15,color: Colors.blue),),),
                
                 ],),
                  
              ],
              
             ),
             ],
           ),
           



        ],
      )
      
        
        
        
      ,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
  //
  /**
   * Container(width: 200,height: 100,decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadiusDirectional.circular(360))
                ,child: Column(children: [
                  
                ],),)


                 Positioned(child: Container(color: Colors.black87,height: 70,width: 20,)),
   */