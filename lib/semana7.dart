import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: 
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Text(
                      "The New York Times UNCP",
                      style: GoogleFonts.fasthand(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.notifications)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Update",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Febrery 11 at 19:23",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Image.asset(
                "assets/images/protesta.jpg",
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextWidget(
                      title:
                        "Protesters in Myanmar Defy Military’s Warning",
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextWidget(
                      title:
                        "The military’s warning came after two weeks of largely peaceful protests against the Feb. 1 coup that ousted the civilian leader Aung San Suu Kyi.",
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                    ),
                    SizedBox(
                      height: 10.0 
                    ),
                    TextWidget(
                      title:
                        "By Hannah Beech",
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                    ),
                  ]
                ),
              )
            ]),
        )
      )
    );
  }
}

class TextWidget extends StatelessWidget{
  String title;
  FontWeight? fontWeight;
  double? fontSize;

  TextWidget({
    required this.title,
    this.fontWeight,
    this.fontSize,
  });
  @override
  Widget build(BuildContext context){
    return Text(
      title,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}