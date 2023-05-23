import 'package:flutter/material.dart';
import 'package:project1/presentation/widgets/text_line.dart';

class Anceta1 extends StatefulWidget {
  const Anceta1({Key? key}) : super(key: key);
  @override
  _Anceta1State createState() => _Anceta1State();
}
class _Anceta1State extends State<Anceta1> {
  var textlines = [
    "Volodya Dovgyn",
    "+380535136431",
    "vol_122dya@gmail.com",
    "USA",
    "Software",
  ];
  bool isClicked=false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            
            children: [
              CircularProgressIndicator(color: Colors.blueGrey,),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child:const SizedBox(
                width: 400,
                height: 450,
                child: Image(
                  image: AssetImage("assets/4.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              ),
              Positioned(
                top: 10,
                right: 350,
                child: IconButton(
                  iconSize: 30,
                  icon: const Icon(Icons.close),
                  color: const Color.fromRGBO(248, 248, 248, 1),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 10,
                right: 40,
                child: IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.favorite,
                  color:isClicked ? Colors.red : Colors.white, 
                  ),
                  onPressed: () {
                    setState(() {
                      isClicked = !isClicked; 
                    });
                  },
                ),
              ),
              Positioned(
                top: 10,
                right: 5,
                child: IconButton(
                  iconSize: 30,
                  icon: const Icon(Icons.more_vert),
                  color: const Color.fromRGBO(255, 254, 254, 1),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Stack(
            children: [
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: SizedBox(
                    width: 400,
                    height: 450,
                    child: Image(
                      image: AssetImage("assets/3.jpg"),
                      fit:BoxFit.cover,
                    ),
                  ),
                ),
              ),
              
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: List.generate(
                    textlines.length,
                    (index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1.0),
                            child: TextLine(text: textlines[index]),
                          ),
                          const SizedBox(
                            width: 600,
                            height: 70,
                            child: Padding(
                              padding: EdgeInsets.only(top: 1),
                              child: Image(
                                image: AssetImage("assets/2.png"),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Align(
                
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, right: 350),
                  child: IconButton(
                    iconSize: 60,
                    icon: const Icon(Icons.arrow_back),
                    color: const Color.fromRGBO(83, 83, 83, 1),
                    onPressed: () {
                      Navigator.pushNamed(context, "/");
                    },
                    
                  ),
                ),
              ),
              Align(
                
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 350),
                  child: IconButton(
                    iconSize: 60,
                    icon: const Icon(Icons.arrow_forward),
                    color: const Color.fromRGBO(83, 83, 83, 1),
                    onPressed: () {
                      Navigator.pushNamed(context, "/thi");
                    },
                  ),
                ),
              ),
            ],
          ),
        ], 
      ),
    );
  }
}
