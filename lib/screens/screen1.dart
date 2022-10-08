
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tic_tac_toe/utils/Myicons.dart';
import 'package:tic_tac_toe/utils/logic.dart';
import 'package:tic_tac_toe/utils/myfots.dart';


class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

int son = 1;
int prosta = 0;

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:  [

          Column(children:[
            SizedBox(height: 330,),
            Center(child: SvgPicture.asset(Myicons.table))

          ]),
          Container(
            child: Column(
              children: [
                SizedBox(height: 70,),
                Center(child: Text("Tic Tac Toe", style: Myfonts.Pacifico.copyWith(fontSize: 40))),
                Center(child: Text("View Prototype, pick a player and press the keys to start playing", style: Myfonts.GochiHand.copyWith(fontSize: 12))),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 120,),
                    Container(child:
                    son == 10 ? Text("     Draw 👊  ", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),) : Text("Player - ", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),)),
                  Container(
                    height: 35,
                    width: 35,
                    child: son == 10 ? Container(height: 58, width: 58,) :  (son % 2 == 0 ? SvgPicture.asset(Myicons.xicon, height: 35, width: 35,) : SvgPicture.asset(Myicons.oicon,height: 35, width: 35,)) ,
                  )
                  ],
                ),
                SizedBox(height: 138,),
                
                Row(
                  children: [

                    SizedBox(width: 60,height: 20,),
                    InkWell(
                        onTap: ((){
                          setState(() {
                            if ( Mylogic.elements[0].num == 0){
                              son % 2 == 0 ? Mylogic.elements[0].num = 1 : Mylogic.elements[0].num = -1;
                              son+= 1;
                            }
                            else {
                              prosta = 0;
                            }
                            check();
                          });
                        }),

                        child: isxoro(Mylogic.elements[0].num)),
                    SizedBox(width: 68,),
                    InkWell(
                        onTap: ((){
                          setState(() {
                            if ( Mylogic.elements[1].num == 0){
                              son % 2 == 0 ? Mylogic.elements[1].num = 1 : Mylogic.elements[1].num = -1;
                              son+= 1;
                            }
                            else {
                              prosta = 0;
                            }
                            check();
                          });
                        }),

                        child: isxoro(Mylogic.elements[1].num)),
                    SizedBox(width: 62,),
                  InkWell(
                    onTap: ((){
                     setState(() {
                       if ( Mylogic.elements[2].num == 0){
                         son % 2 == 0 ? Mylogic.elements[2].num = 1 : Mylogic.elements[2].num = -1;
                         son+= 1;
                       }
                       else {
                         prosta = 0;
                       }
                       check();
                     });
                    }),

                    child: isxoro(Mylogic.elements[2].num)),

                  ],
                ),
                SizedBox(height: 60,),
                Row(
                  children: [

                    SizedBox(width: 60,),
                    InkWell(
                        onTap: ((){
                          setState(() {
                            if ( Mylogic.elements[3].num == 0){
                              son % 2 == 0 ? Mylogic.elements[3].num = 1 : Mylogic.elements[3].num = -1;
                              son+= 1;
                            }
                            else {
                              prosta = 0;
                            }
                            check();
                          });
                        }),

                        child: isxoro(Mylogic.elements[3].num)),
                    SizedBox(width: 68,),
                    InkWell(
                        onTap: ((){
                          setState(() {
                            if ( Mylogic.elements[4].num == 0){
                              son % 2 == 0 ? Mylogic.elements[4].num = 1 : Mylogic.elements[4].num = -1;
                              son+= 1;
                            }
                            else {
                              prosta = 0;
                            }
                            check();
                          });
                        }),

                        child: isxoro(Mylogic.elements[4].num)),
                    SizedBox(width: 62,),
                    InkWell(
                        onTap: ((){
                          setState(() {
                            if ( Mylogic.elements[5].num == 0){
                              son % 2 == 0 ? Mylogic.elements[5].num = 1 : Mylogic.elements[5].num = -1;
                              son+= 1;
                            }
                            else {
                              prosta = 0;
                            }
                            check();
                          });
                        }),

                        child: isxoro(Mylogic.elements[5].num)),

                  ],
                ),
                SizedBox(height: 66,),
                Row(
                  children: [
                    SizedBox(width: 60,),
                    InkWell(
                        onTap: ((){
                          setState(() {
                            if ( Mylogic.elements[6].num == 0){
                              son % 2 == 0 ? Mylogic.elements[6].num = 1 : Mylogic.elements[6].num = -1;
                              son+= 1;
                            }
                            else {
                              prosta = 0;
                            }
                            check();
                          });
                        }),

                        child: isxoro(Mylogic.elements[6].num)),
                    SizedBox(width: 68,),
                    InkWell(
                        onTap: ((){
                          setState(() {
                            if ( Mylogic.elements[7].num == 0){
                              son % 2 == 0 ? Mylogic.elements[7].num = 1 : Mylogic.elements[7].num = -1;
                              son+= 1;
                            }
                            else {
                              prosta = 0;
                            }
                            check();
                          });
                        }),

                        child: isxoro(Mylogic.elements[7].num)),
                    SizedBox(width: 62,),
                    InkWell(
                        onTap: ((){
                          setState(() {
                            if ( Mylogic.elements[8].num == 0){
                              son % 2 == 0 ? Mylogic.elements[8].num = 1 : Mylogic.elements[8].num = -1;
                              son+= 1;
                            }
                            else {
                              prosta = 0;
                            }
                            check();
                          });
                        }),

                        child: isxoro(Mylogic.elements[8].num)),

                  ],
                ),

               SizedBox(height: 100,),
               InkWell(
                 onTap: ((){
                   setState(() {
                     son = 1;
                     Mylogic.elements[0].num = 0;
                     Mylogic.elements[1].num = 0;
                     Mylogic.elements[2].num = 0;
                     Mylogic.elements[3].num = 0;
                     Mylogic.elements[4].num = 0;
                     Mylogic.elements[5].num = 0;
                     Mylogic.elements[6].num = 0;
                     Mylogic.elements[7].num = 0;
                     Mylogic.elements[8].num = 0;

                   });
                 }
                 ),


                 child: Container(
                   height: 60,
                   width: 110,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.yellow
                   ),
                   child: Center(child: Text("Retry", style: Myfonts.GochiHand,)),
                 ),
               )







              ],
            ),
          )

        ],
      ),
    );
  }
  
  Widget isxoro (index){
    return Container(
        child: index == 0 ? Container(height: 58, width: 58,) :(index == 1 ? SvgPicture.asset(Myicons.xicon) : SvgPicture.asset(Myicons.oicon))
      );
  }

  Widget check(){
    if ((Mylogic.elements[0].num == 1  &&  Mylogic.elements[1].num == 1 && Mylogic.elements[2].num == 1) ||
        (Mylogic.elements[3].num == 1  &&  Mylogic.elements[4].num == 1 && Mylogic.elements[5].num == 1) ||
        (Mylogic.elements[6].num == 1  &&  Mylogic.elements[7].num == 1 && Mylogic.elements[8].num == 1) ||
        (Mylogic.elements[0].num == 1  &&  Mylogic.elements[3].num == 1 && Mylogic.elements[6].num == 1) ||
        (Mylogic.elements[1].num == 1  &&  Mylogic.elements[4].num == 1 && Mylogic.elements[7].num == 1) ||
        (Mylogic.elements[2].num == 1  &&  Mylogic.elements[5].num == 1 && Mylogic.elements[8].num == 1) ||
        (Mylogic.elements[0].num == 1  &&  Mylogic.elements[4].num == 1 && Mylogic.elements[8].num == 1) ||
        (Mylogic.elements[6].num == 1  &&  Mylogic.elements[4].num == 1 && Mylogic.elements[2].num == 1)
    ){ showdilog(1);
    }
    else if ((Mylogic.elements[0].num == -1  &&  Mylogic.elements[1].num ==-1 && Mylogic.elements[2].num == -1) ||
        (Mylogic.elements[3].num == -1  &&  Mylogic.elements[4].num == -1 && Mylogic.elements[5].num == -1) ||
        (Mylogic.elements[6].num == -1  &&  Mylogic.elements[7].num == -1 && Mylogic.elements[8].num == -1) ||
        (Mylogic.elements[0].num == -1  &&  Mylogic.elements[3].num == -1 && Mylogic.elements[6].num == -1) ||
        (Mylogic.elements[1].num == -1  &&  Mylogic.elements[4].num == -1 && Mylogic.elements[7].num == -1) ||
        (Mylogic.elements[2].num == -1  &&  Mylogic.elements[5].num == -1 && Mylogic.elements[8].num == -1) ||
        (Mylogic.elements[0].num == -1  &&  Mylogic.elements[4].num == -1 && Mylogic.elements[8].num == -1) ||
        (Mylogic.elements[6].num == -1  &&  Mylogic.elements[4].num == -1 && Mylogic.elements[2].num == -1)
    ){showdilog(-1);}
    else if (

    (Mylogic.elements[0].num == 0 && Mylogic.elements[1].num == 0 && Mylogic.elements[2].num == 0 && Mylogic.elements[3].num == 0 && Mylogic.elements[4].num == 0 && Mylogic.elements[5].num == 0 && Mylogic.elements[6].num == 0 && Mylogic.elements[7].num == 0 && Mylogic.elements[8].num ==0)


    ){
      showdilog(0);
    }

    return Container();
  }


  void showdilog(int num){
    showDialog(context: context,
        builder: (context) => AlertDialog(
          title:  Text("The end"),
          content: num == 0 ? Text("                   Draw 👊") : (num == 1 ? Text("                   X Winner!") : Text("                   O Winner!")),
         actions: [
           MaterialButton(onPressed: ((){

            setState(() {
              son = 1;
              Mylogic.elements[0].num = 0;
              Mylogic.elements[1].num = 0;
              Mylogic.elements[2].num = 0;
              Mylogic.elements[3].num = 0;
              Mylogic.elements[4].num = 0;
              Mylogic.elements[5].num = 0;
              Mylogic.elements[6].num = 0;
              Mylogic.elements[7].num = 0;
              Mylogic.elements[8].num = 0;

             Navigator.pop(context);
            });



           }),
             child: Text("PLAY AGAIN", style: TextStyle(color: Colors.cyanAccent),),

           ),

           MaterialButton(onPressed:
           ((){
           setState(() {
             SystemNavigator.pop();
           });
           }),
             child: Text("EXIT", style: TextStyle(color: Colors.red),),

           )
         ],
        )
    );
  }

}
