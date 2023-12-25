import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_ui/components.dart';
import 'package:movie_app_ui/detailscreen.dart';
class HomePage extends StatefulWidget {
// \  Movies movie;
//    HomePage({required this.movie});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List<Map<String,dynamic>>movie=[
{
  'name':'Joker',
  'img':'asset/joker.jpg'
},
  {
    'name':'StarWars',
    'img':'asset/starwarsposter.jpg'
  }
];
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
              CarouselSlider(
                items: [
                  Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('asset/starwarsposter.jpg'),fit: BoxFit.cover)
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('asset/joker.jpg'),fit: BoxFit.cover)
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('asset/HD-wallpaper-avengers-endgame-end-war.jpg'),fit: BoxFit.cover)
                    ),
                  ),

              ],options: CarouselOptions(
                height: 200,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(seconds: 800),
                autoPlayCurve: Curves.bounceIn,
                scrollDirection: Axis.horizontal,
                enlargeCenterPage: true
              ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Latest Relaease',style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 20
                    ),),
                  ),

                ],
              ),
              GestureDetector(
                child: CarouselSlider(
                  items: [

                    Card(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('asset/HD-wallpaper-avengers-endgame-end-war.jpg',scale: 10,),
                          Text('Avenger',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Card(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('asset/HD-wallpaper-avengers-endgame-end-war.jpg',scale: 10,),
                          Text('Avenger',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )


                  ],options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16/9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(seconds: 800),
                    autoPlayCurve: Curves.bounceIn,
                    scrollDirection: Axis.vertical,
                    enlargeCenterPage: true
                ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreenn()));
                },
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Best Action Movies',style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20
                    ),),
                  ),

                ],
              ),
              GestureDetector(
                child: CarouselSlider(
                  items: [

                    Card(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('asset/joker.jpg',scale: 10,),
                          Text('Joker',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Card(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('asset/HD-wallpaper-avengers-endgame-end-war.jpg',scale: 10,),
                          Text('Avenger',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )


                  ],options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16/9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(seconds: 800),
                    autoPlayCurve: Curves.bounceIn,
                    scrollDirection: Axis.vertical,
                    enlargeCenterPage: true
                ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreenn()));
                },
              )




            ],
          ),
        ),

      ),
    );
  }
}
