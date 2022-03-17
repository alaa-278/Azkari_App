import 'package:flutter/material.dart';
class Body extends StatelessWidget {
   const Body({Key? key,required this.text}) : super(key: key);

      final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
           width: double.infinity,
           color:const Color(0xffe5f4f2),
           child:
            Row(
               mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text(text, textAlign: TextAlign.end,style: const TextStyle(
                      fontSize: 25,fontWeight: FontWeight.w700,color: Color(0xff024b3e)
                  ),),
                ),
                Image.asset('assets/images/icon_body.png',height: 40,),
              ],
            ),

      ),
    );
  }
}
