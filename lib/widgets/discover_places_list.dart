import 'package:flutter/material.dart';

class DiscoverPlaces extends StatelessWidget {
  const DiscoverPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(height: 250, width: 200,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network('https://cdn.pixabay.com/photo/2017/05/31/10/23/manor-house-2359884_960_720.jpg',
                            width: double.infinity,  height: 200,     fit: BoxFit.cover,
                          ),
                          ),
                    ],
                    )                   
                    ),
                  );    
  }
}