import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hotel_booking_app/widgets/discover_places_list.dart';
import 'package:hotel_booking_app/widgets/hotel_list_card.dart';

class DiscoveScreen extends StatefulWidget {
  const DiscoveScreen({super.key});

  @override
  State<DiscoveScreen> createState() => _DiscoveScreenState();
}

class _DiscoveScreenState extends State<DiscoveScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: 
       SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //------------------First Section ----------------------------------------------------------------->
            Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network('https://cdn.pixabay.com/photo/2021/09/22/08/35/architecture-6646154_960_720.jpg',
                width: double.infinity,  height: 250,     fit: BoxFit.cover,
                ),
              ),
              //=======================1st Row ============================================================>
              const Positioned(bottom: 180,left: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [
                      Icon(Icons.local_activity_rounded, color: Colors.white,),
                      Text("Country",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                  SizedBox(width: 230,),
                  Icon(Icons.person_2_outlined, color: Colors.white,)
                ],
                )),
               //=======================2nd Row ============================================================>
                
              Positioned(bottom: 100,left:30,
                child: Container(width: 350,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1,vertical: 1),
                      child: Text("Hey, Martin! Tell us where you want to go",style: TextStyle(color: Colors.white,fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    ),
                                     maxLines: 2,overflow: TextOverflow.ellipsis, softWrap: true,
                              ),
                    ),
                ),
              ),

              //=======================3nd Row ============================================================>
              Positioned(bottom:20,left: 30, 
                child:Container( width:350,height:60, decoration: BoxDecoration(color: const Color.fromARGB(99, 158, 158, 158),
                                  borderRadius: BorderRadius.circular(50)),
                  child:const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(children: [
                      Icon(Icons.search, color: Colors.white,),
                      SizedBox(width: 10,),
                      Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Search places",style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold, ),),
                          Text("Date range *",style: TextStyle(color: Colors.white,fontSize: 12, ),),
                      ],) 
                    ],),
                  )                   
                ))
              //===================================================================================>
            ], ),

            //------------------------------------------------------------------------------------->
            const SizedBox(height: 40,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("The most relevant",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        ],
                ),
              ),
            ),
            //------------------------------------------------------------------------------------->

            //----------------Second Section--------------------------------------------------------------------->
               SizedBox(height: 280,
                 child: ListView.builder(scrollDirection:Axis.horizontal,
                 itemCount: 5,
                  itemBuilder: (context,index) {
                      return const HotelListCard();
                  },
                 ),
               ),
         
            //------------------------------------------------------------------------------------>
            const SizedBox(height: 20,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Discover new places",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    ],
                ),
              ),
            ),
            //------------------------------------------------------------------------------------>
             SizedBox(height: 280,
                 child: ListView.builder(scrollDirection:Axis.horizontal,
                 itemCount: 5,
                  itemBuilder: (context,index) {
                      return const DiscoverPlaces();
                  },
                 ),
               ),
            //  Container(
            //   margin: const EdgeInsets.all(15),
            //   width: double.infinity,
            //   height: 200,
            //   color: const Color.fromARGB(255, 68, 255, 146),
            // )
            //----------------------------------------------------------------------------------->
          ],         
          ),
        ),
       );
       //Center(child: Text("Discover Screen"),),
  }
}