import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DetailScreenn extends StatefulWidget {
  const DetailScreenn({super.key});

  @override
  State<DetailScreenn> createState() => _DetailScreennState();
}

class _DetailScreennState extends State<DetailScreenn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: Icon(Icons.menu,color: Colors.black,),

          actions: [
            Icon(Icons.favorite,color: Colors.black,),
            SizedBox(width: 20,),
            Icon(Icons.search,color: Colors.black,)

          ],

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(height: 300,
                width: 392,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'asset/HD-wallpaper-avengers-endgame-end-war.jpg'),fit: BoxFit.cover)
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(00, 00, 60, 0),
                    child: Text('Avengers End Game',style: GoogleFonts.average(fontSize: 30,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 0.1
                          )
                        ]
                      ),
                      child: Icon(Icons.favorite))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla '
                    ,
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200),),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Streaming Services',style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 20
                  ),),
                ],
              ),SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                  width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('asset/BrandAssets_Logos_02-NSymbol.jpg'),
                      fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)
                    )
                    ,),
                  SizedBox(width: 20,),
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('asset/ba1350cf974cf389fe2a2489e004da98.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10)
                    )
                    )
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Top Comments',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  ),
                ],
              )

            ],
          ),
        ),
        
      ),
    );
  }
}
