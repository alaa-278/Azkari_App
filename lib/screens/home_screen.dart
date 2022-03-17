import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/body/body.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter=0;
  String name = 'سبحان الله';
  int numberOfPeriod=1;
  @override
  Widget build(BuildContext context) {
    if(counter>=0 &&counter<=15){
         name='سبحان الله';
         numberOfPeriod=1;
    }
    else if(counter>15 &&counter<=30){
      name='الحمد لله';
      numberOfPeriod=2;
    }
    else if(counter>30 &&counter<=45){
      name='الله اكبر';
      numberOfPeriod=3;
    }
    else if(counter>45 &&counter<=60){
      name='لا اله الا الله';
      numberOfPeriod=4;
    }else if(counter>60 &&counter<=75){
      name='لا حول ولا قوة الا بالله';
      numberOfPeriod=5;
    }


    return Scaffold(
           backgroundColor: Colors.white,
           appBar: AppBar(
             title: const Text('الباقيات الصالحات',style: TextStyle(
               fontSize: 25,fontWeight: FontWeight.w600
             ),),
             leading: Padding(
               padding: const EdgeInsets.all(8),
               child: Image.asset('assets/images/icon.png',),
             ),
             actions: const [
               Padding(
                 padding: EdgeInsets.all(15),
                 child: Icon(Icons.account_circle_rounded,size: 25,),
               )
             ],
             centerTitle: true,
             backgroundColor: const Color(0xff024b3e),
           ),
           body: Column(
               mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                const SizedBox(height: 15,),
                 const Body(text: 'سبحان الله'),
                 const Body(text: 'الحمد لله'),
                 const Body(text: 'الله أكبر '),
                 const Body(text: 'لا إله إلا الله'),
                 const Body(text: 'لا حول ولا قوة إلا بالله'),
                 const SizedBox(height: 40,),
                Container(
                  padding: const EdgeInsets.only(top: 5,bottom: 5,left: 20,right: 20),
                  decoration:   BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                      color: const Color(0xffe5f4f2),
                  ),
                  child:   Text(name,style: const TextStyle(
                      color: Color(0xff012d25),fontSize: 30,fontWeight: FontWeight.w600
                  ),),
                ),
                const SizedBox(height:40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 5,bottom: 5,left: 20,right: 20),
                      decoration: const BoxDecoration(
                          color: Color(0xff024b3e),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(5),
                          )
                      ),
                      child: Text('$counter',style: const TextStyle(
                          color: Colors.white,fontSize: 35,fontWeight: FontWeight.w600
                      ),),
                    ),
                    const SizedBox(width: 15,),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        counter++;
                      });
                      },
                        style: ElevatedButton.styleFrom(
                          elevation:2,
                            primary: const Color(0xff024b3e),minimumSize: const Size(60,60),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(30),
                                ),
                            )
                        ),
                        child: const Text('اضغط هنا',style: TextStyle(
                          fontSize: 25,fontWeight: FontWeight.w600,
                        ),)),
                ],),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  [
                    TextButton(onPressed: (){
                      setState(() {
                        numberOfPeriod;
                      });
                    }, child: Text(' الدورة رقم : $numberOfPeriod',style:  const TextStyle(
                        fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff024b3e)),),),

                   TextButton(onPressed:
                       (){
                          setState(() {
                            counter=0;
                            numberOfPeriod=0;
                          });
                       }
                       , child:   const Text('البدء من جديد',style:  TextStyle(
                       fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff024b3e)),)),


                  ],
                )
              ],
           ),
    );
  }
}
