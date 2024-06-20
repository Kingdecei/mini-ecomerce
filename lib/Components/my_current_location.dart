import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox (BuildContext context) {
    showDialog(
      context: context,
       builder: (
        context) =>  AlertDialog(
          title: const Text(" your location"),
          content: const TextField(decoration:   InputDecoration(
            hintText: "Search Address.."
            )
          ),
          actions: [
            // cancel button
            MaterialButton(
            onPressed: () => Navigator.pop(context),
            child:  const Text("Cancel"),
            ),
            // save button
             MaterialButton(
            onPressed: () => Navigator.pop(context),
            child:  const Text("save"),
            )
            
            
            ],
          )
    );
          
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver Now", style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary),),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // Address
                Text("34 Atekong"),
              
                //drop down menu
                Icon(Icons.keyboard_arrow_down_outlined)
              ],),
          )
    
        ],
      ),
    );
  }
}