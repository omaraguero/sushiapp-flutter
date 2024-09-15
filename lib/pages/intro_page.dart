import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushiapp/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 138, 60, 55),
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 25,
              ),
              //shop name
              Text(
                "SUSHI PN",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28, color: Colors.white),
              ),

              const SizedBox(height: 20),
              //icon
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Image.asset('assets/salmon_eggs2.png'),
              ),

              //title
              Text(
                "The Taste of Japanese Food",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 44, color: Colors.white),
              ),

              const SizedBox(height: 10),

              //subtitle
              Text(
                  "Feel the taste of the most popular Japanese food from anywhere and anytime",
                  style: TextStyle(color: Colors.grey[200], height: 2)),

              const SizedBox(height: 25),

              //getstartedbutton
              MyButton(text: "Get started",
              onTap: (){
                //go to menu page
                Navigator.pushNamed(context, '/menupage');

              },)
            ],
          ),
        ));
  }
}
