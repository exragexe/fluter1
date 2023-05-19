import 'package:flutter/material.dart';
import 'package:project1/presentation/widgets/text_line.dart';

class Home extends StatelessWidget {
   Home({super.key});
var textlines =[
  "Name: Yaroslav",
  "Surname: Disiak",
  "Phone: +380679340230",
  "Email: tigeya8106@dekaps.com",
  "Address: Ukraine"
];
  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 400, 
            height:450, 
            child: Image(
              image: AssetImage("assets/1.jpg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 1.0,top: 240),
            child: Column(
              children: List.generate(textlines.length,(index){
                  return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2.0),
                      child : TextLine(text: textlines[index]),
                    ),
                     const SizedBox(
                      width: 350,
                      height: 70,
                      child: Image(
                        image: AssetImage("assets/2.png"),
                      ),
                    ),
                  ],
                );
                },
            ),
          ),
          ),
        ],
      ),
    );
    
  }
}
