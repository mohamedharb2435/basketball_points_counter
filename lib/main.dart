//import 'dart:html';
//import 'dart:ui';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}
int TeamAPoints=0;
int TeamBPoints=0;
class PointsCounter extends StatefulWidget {

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner:false,
      home:Scaffold(
     appBar:AppBar(
       backgroundColor: Color(0xff03161a),
       title: Text('PointsCounter'),

     ),
        backgroundColor:Color(0xffefe7e4),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //team A
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Team A',
                      style: TextStyle(
                        fontSize: 32,

                      ),
                      ),
                      Text('$TeamAPoints',
                        style: TextStyle(
                          fontSize: 100,

                        ),
                      ),
                      ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         minimumSize: Size(150,50),
                         primary: Color(0xff1B3358),
                       ),
                        onPressed: ()
                        {
                          setState(() {
                            if(TeamAPoints == 250)
                              {
                                TeamAPoints =0;
                              }
                            TeamAPoints++;
                          });
                        },
                          child:Text('Add 1 Point',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 18,
                          ),
                          ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150,50),
                          primary:  Color(0xff1B3358),
                        ),
                        onPressed: ()
                        {
                          setState(() {
                            if(TeamAPoints == 250)
                            {
                              TeamAPoints =0;
                            }
                            else
                            TeamAPoints +=2;
                          });
                        },
                        child:Text('Add 2 Point',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150,50),
                          primary: Color(0xff1B3358),
                        ),
                        onPressed: ()
                        {
                          setState(() {
                            if(TeamAPoints == 250)
                            {
                              TeamAPoints =0;
                            }
                            TeamAPoints -=1;
                          });
                        },
                        child:Text('Sub one Point',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                //vertical divider
                Container(
                  height: 500,
                  child: VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                //team B
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Team B',
                        style: TextStyle(
                          fontSize: 32,

                        ),
                      ),
                      Text('$TeamBPoints',
                        style: TextStyle(
                          fontSize: 100,

                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150,50),
                          primary:  Color(0xff1B3358),
                        ),
                        onPressed: ()
                        {
                          setState(() {
                            if(TeamBPoints == 250)
                            {
                              TeamBPoints =0;
                            }
                            TeamBPoints ++;
                          });
                        },
                        child:Text('Add 1 Point',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150,50),
                          primary:  Color(0xff1B3358),
                        ),
                        onPressed: ()
                        {
                          setState(() {
                            if(TeamBPoints == 250)
                            {
                              TeamBPoints =0;
                            }
                            TeamBPoints +=2;
                          });
                        },
                        child:Text('Add 2 Point',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150,50),
                          primary:  Color(0xff1B3358),
                        ),
                        onPressed: ()
                        {
                          setState(() {
                            if(TeamBPoints == 250)
                            {
                              TeamBPoints =0;
                            }
                            TeamBPoints-=1;
                          });
                        },
                        child:Text('Sub one Point',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Reset
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150,50),
                primary: Color(0xff33000b),
              ),
              onPressed: ()
              {
                setState(() {
                  TeamAPoints=0;
                  TeamBPoints=0;
                });
              },
              child:Text('Reset',
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

