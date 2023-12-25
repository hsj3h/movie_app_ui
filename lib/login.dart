import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app_ui/signuppage.dart';
import 'package:movie_app_ui/homepage.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(height: 300,
              width: 392,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'asset/HD-wallpaper-avengers-endgame-end-war.jpg'),fit: BoxFit.cover)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Welcome',style: GoogleFonts.abrilFatface(fontSize: 40),),
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
                    ),hintText: 'Username or Email ID'
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(child: Text('Forgot Password?',style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: (){},
                  ),
                ],
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
                    'LOGIN',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

              },
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Or Login With'),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(child: Image.asset('asset/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png',scale: 20,),
                  onTap: (){},),
                SizedBox(width: 20,),
                InkWell(child: Image.asset('asset/facebook-logo-23.jpg',scale: 18,),
                  onTap: (){},)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have any account'),
                  GestureDetector(child: Text('  SignUp',style: TextStyle(fontWeight: FontWeight.bold),),
                      onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                      })
                ],
              ),
            )

          ],

        ),

      ),
    );
  }
}
