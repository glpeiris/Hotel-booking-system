import 'package:flutter/material.dart';
import 'package:hotel_booking_app/screens/booking_screen.dart';
import 'package:hotel_booking_app/screens/discover_screen.dart';
import 'package:hotel_booking_app/screens/favourite_screen.dart';
import 'package:hotel_booking_app/screens/massages_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int screenNo = 0;
  List<Widget> screenList=const[DiscoveScreen(),FavourtieScreen(),BookingScreen(),MassageScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: screenList[screenNo],
      
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color.fromARGB(214, 29, 29, 29)),
            width: double.infinity,height: 60, 
            child: 
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                bottomNavigationIcon(icon: Icons.discord_rounded,iconText: "Discover",index: 0),
                bottomNavigationIcon(icon: Icons.favorite_border,iconText: "Favourite",index: 1),
                bottomNavigationIcon(icon: Icons.book_online_sharp,iconText: "Bookings",index: 2),
                bottomNavigationIcon(icon: Icons.message_sharp,iconText: "Messages",index: 3),
              ],
              ),
            ),
          ),
        ),
    );
  }



Widget bottomNavigationIcon({required IconData icon, required String iconText,required int index}) {
    return InkWell(
      onTap: (){
        setState(() {
          screenNo=index;
        });
      },
      child: Column(
              children: [
                Icon(icon, color:screenNo==index?Colors.white: Colors.grey, 
                size:screenNo == index ?23:18,),
                Text(iconText,style: TextStyle(color: screenNo==index?Colors.white: Colors.grey),)
              
              ],
            ),
    );
  }

}


