import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app_ui/login.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(height:MediaQuery.of(context).size.height*0.4,
                width: 392,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'asset/HD-wallpaper-avengers-endgame-end-war.jpg'),fit: BoxFit.cover)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('SignUp',style: GoogleFonts.abrilFatface(fontSize: 40),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                TextFormField(


                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),hintText: 'First Name'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                TextFormField(


                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),hintText: 'Last name'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                TextFormField(


                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),hintText: 'Email Address'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                TextFormField(


                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),hintText: 'Password'
                  ),
                ),
              ),



              GestureDetector(
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(30),
                      color: Colors.blueAccent
                  ),
                  child: Center(
                    child: Text(
                      'SignUp',style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                ),
                onTap: (){},
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    GestureDetector(child: Text('  LogIn',style: TextStyle(fontWeight: FontWeight.bold),),
                        onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                        })
                  ],
                ),
              )

            ],

          ),
        ),

      ),
    );
  }
}
