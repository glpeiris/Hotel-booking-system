import 'package:flutter/material.dart';

class HotelListCard extends StatelessWidget {
  const HotelListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(height: 300, width: 300,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network('https://cdn.pixabay.com/photo/2023/03/29/10/27/hotel-7885138_1280.jpg',
                            width: double.infinity,  height: 200,     fit: BoxFit.cover,
                          ),
                          ),
                          Positioned(top: 20,right: 20,
                            child:Container(width: 30,height: 30,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.grey,
                               ),
                               child: const Icon(Icons.favorite_outline, color: Colors.white,),
                            )
                             ,)
                        ],
                      ),

                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: SizedBox(width: 300,
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text("Aparthotel Stare Miasto",style: TextStyle(color: Colors.black,fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      )
                                      ,maxLines: 2,overflow: TextOverflow.ellipsis, softWrap: true,
                                      ),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.black,),
                                Text("4.96",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("(217)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                              ],
                            )
                          ],                        
                          ),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Row(children: [
                          Text("1 large double bedor2 single beds",style: TextStyle(fontSize: 10,color: Colors.black),)                                                 
                        ],),
                      ),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Row(children: [
                          Text("117",style: TextStyle(fontSize: 10,color: Colors.black),),
                           SizedBox(width: 10,),
                          Text("91 night =",style: TextStyle(fontSize: 10,color: Colors.black, fontWeight: FontWeight.bold),),
                           SizedBox(width: 10,),
                           Text("273 total",style: TextStyle(fontSize: 10,color: Colors.black),)                                                   
                        ],),
                      )

                    ],
                    )

                    //color: Colors.deepPurple[200],
                   //child: const Text("gggggggg"),
                  
  
                    ),
                  );     
  }
}