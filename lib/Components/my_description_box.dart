import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});
 
  

  @override
  Widget build(BuildContext context) {
     //Text Style
    var MyPrimaryTextStyle = TextStyle(
      color: Theme.of(
        context).colorScheme.inversePrimary
    );
     var MySecondaryTextStyle = TextStyle(
      color: Theme.of(
        context).colorScheme.inversePrimary
    );
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(
            context).colorScheme.secondary),
            borderRadius: BorderRadius.circular(8)
       ),
       padding: EdgeInsets.all(25),
       margin: EdgeInsets.all(25),
       child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        // delivery fee
        Column(children: [
          Text('\$10', style: MyPrimaryTextStyle,),
          Text('Delivery Fee', style: MySecondaryTextStyle,)
        ],
        ), Column(children: [
          Text('10-30min', style: MyPrimaryTextStyle,),
          Text('Delivery Time', style: MySecondaryTextStyle,)

        //delivery time
       ]
       ),
       ]
     )
      );
  }
}