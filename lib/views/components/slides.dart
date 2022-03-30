import 'package:flutter/material.dart';
import 'items.dart';

class Slides extends StatelessWidget {
  int index;

  Slides(this.index);
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [

        Image.asset(items[index]['images'],
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),

        Container(
          color: Colors.white.withOpacity(0.8),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),

        SafeArea(

            //height: MediaQuery.of(context).size.height,
            child: Container(
              padding:const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('Fat Measuring App',style: TextStyle(
                    color:Color(0xFFEC5F43),
                    fontSize:22.0,
                    fontFamily:'Ubuntu',
                  ),textAlign: TextAlign.center,),
                  const SizedBox(
                    height: 15.0,
                  ),

                  Expanded(
                    flex: 3,
                    child : items[index]['number']==0?
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment:MainAxisAlignment.end,
                      children: [
                        Text(items[index]['title'],style: const TextStyle(
                          color:Color(0xFF225C87),
                          fontSize:40.0,
                          fontFamily:'Ubuntu',
                        )),

                        const SizedBox(
                          height: 8.0,
                        ),

                        Text(items[index]['description'],style: TextStyle(
                          color:const Color(0xFF225C87).withOpacity(0.7),
                          fontSize:22.0,
                          fontFamily:'Regular',
                        )),

                      ],
                    ):
                    SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          boxShadow: const [BoxShadow(color: Color(0xFFEC5F43),blurRadius: 0.1,spreadRadius: 0.1)],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Center(
                            child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(items[index]['description'],style: TextStyle(
                                    color:const Color(0xFF225C87).withOpacity(0.7),
                                    fontSize:18.0,
                                    fontFamily:'Regular',
                                  )),
                                  const SizedBox(height: 8.0,),
                                  Text(items[index]['additional'],style: TextStyle(
                                    color:const Color(0xFF225C87).withOpacity(0.7),
                                    fontSize:18.0,
                                    fontFamily:'Regular',
                                  )),

                                ],
                              ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),

                  items[index]['number']==2?ElevatedButton(onPressed: (){}, child: const Text('Let\'s begin'),style: ElevatedButton.styleFrom(
                    primary:const Color(0xFFEC5F43),
                  ),):const Text(''),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.circle,
                            color: items[index]['number']==0?Color(0xFFEC5F43).withOpacity(0.6):Color(0xFF225C87).withOpacity(0.6),size: 15.0,
                          ),
                          Icon(Icons.circle,
                            color: items[index]['number']==1?Color(0xFFEC5F43).withOpacity(0.6):Color(0xFF225C87).withOpacity(0.6),size: 15.0,
                          ),
                          Icon(Icons.circle,
                            color: items[index]['number']==2?Color(0xFFEC5F43).withOpacity(0.6):Color(0xFF225C87).withOpacity(0.6),size: 15.0,
                          )
                        ],
                      ),]
                    ),
                  ),
                ],
              ),
            ),

        ),
      ],
    );
  }
}