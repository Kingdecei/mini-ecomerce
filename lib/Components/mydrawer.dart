import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/my_drawer_tile.dart';
import 'package:flutter_application_1/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(children: [
        //app logo
        Padding(
          padding:  const EdgeInsets.only(top: 100.0),
          child: Icon(
            Icons.open_in_browser_rounded, size: 60, color: Theme.of(context).colorScheme.inversePrimary,
          ),
         
        ),
          Padding(padding: EdgeInsets.all(25.0),
          child: Divider(
            color: Theme.of(context).colorScheme.secondary,
          ),
          
          ),

        // homelist list title
        MyDrawerTile(text: "HOME", 
        icon: Icons.home, 
        onTap: () => Navigator.pop(context)),

        // SETTINGS

          MyDrawerTile(text: "Settings", 
        icon: Icons.settings, 
        onTap: () { 
        Navigator.pop(context);
        Navigator.push(context,
         MaterialPageRoute(builder:
          (context) =>const Settingspage()
          )
          );
          }
           ),
        Spacer(),

        // logout
          MyDrawerTile(text: "HOME", 
        icon: Icons.logout, 
        onTap: () {}),

        SizedBox( height: 25,)
      ],),
    );
  }
}