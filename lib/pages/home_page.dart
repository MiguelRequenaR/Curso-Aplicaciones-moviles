import 'package:componente/pages/avatar_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 300.0,
                width: 300.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: Offset(
                        4.0,
                        4.0,
                      ),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://i.pinimg.com/originals/f4/95/52/f49552c63e353a6c2b73eada2f8f4671.jpg"
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.oregano(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 160,
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              ItemComponetWidget(title: "Avatar", toPage: AvatarPage()),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white70,
    );
  }
}

class ItemComponetWidget extends StatelessWidget{
  String title;
  Widget toPage;

  ItemComponetWidget({
    required this.title,
    required this.toPage,
  });

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(
              4.0,
              4.0,
            ),
            blurRadius: 12.0,
          ),
        ],
      ),
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => toPage));
        },
        leading: Icon(
          Icons.check_circle_outline,
          color: Color(0xff636b7c),
        ),
        title: Text(
          title,
        ),
        subtitle: Text("Ir a detalle de $title"),
        trailing: Icon(
          Icons.chevron_right,
        ),
      ),
    );
  }
}