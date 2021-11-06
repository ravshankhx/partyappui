import 'package:flutter/material.dart';
import 'package:partyappui/animations/fade_animation.dart';
class HomePage extends StatefulWidget {
  static final String id = "home_page";
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit: BoxFit.cover,
          )
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.5),
              Colors.black.withOpacity(.4),
              Colors.black.withOpacity(.3),
                ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FadeAnimation(1,  Text("Find the best parties near you",style: TextStyle(color: Colors.yellow[600],fontWeight: FontWeight.bold,fontSize: 40),),),
              SizedBox(height: 30,),
             FadeAnimation(1.2,  Text("Let us find you a party for your interest",style: TextStyle(color: Colors.green[300],fontWeight: FontWeight.w300,fontSize: 25),),),


              SizedBox(height: 500,),

              _isLogin ?
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(59),
                  color: Colors.yellow[900],

                ),
                child: Center(
                  child: Text("Start",style: TextStyle(color: Colors.white,fontSize: 18),),
                ),
              ):
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.red,

                        ),
                        child: Center(
                          child: Text("Google+",style: TextStyle(color: Colors.white,fontSize: 18),),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blue,

                        ),
                        child: Center(
                          child: Text("Facebook",style: TextStyle(color: Colors.white,fontSize: 18),),
                        ),
                      ),
                    ],

                  ),

              SizedBox(height: 10,)

            ],
          ),
        ),
      ),



    );
  }
}
