import 'package:flutter/material.dart';

class MYTanker extends StatelessWidget {
  double height;
   MYTanker({super.key ,required this.height});

  @override
  Widget build(BuildContext context) {
    return
               Stack(
                children: [
               
                  Positioned(  child: Container(
               width: 400,
               height: 700,
               decoration: BoxDecoration(color: Colors.black38,border: Border.all(color: Colors.black,width: 3.0)),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                    Container(
                 width: 400,
                 height: height,
                 color: Colors.orangeAccent,),
                 
                 ] )
               ),),
                  const Positioned(top: 10,child: Text('┄┄400liter ')),
                  const Positioned(top: 100,child: Text('┄┄350liter '),),
                 const  Positioned(top: 200,child: Text('┄┄300liter '),),
                  const Positioned(top: 300,child: Text('┄┄250liter '),),
                   const Positioned(top: 400,child: Text('┄┄200liter '),),
                   const Positioned(top: 500,child: Text('┄┄150liter '),),
                   const  Positioned(top: 600,child: Text('┄┄100liter '),),
                    

                   
                ],
               );
  }
}