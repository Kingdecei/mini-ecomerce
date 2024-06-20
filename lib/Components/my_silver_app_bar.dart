import 'package:flutter/material.dart';

class MySylverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySylverAppBar({super.key,
  required this.child,
  required this.title
  
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 320,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        // cart button
        IconButton(onPressed: () {},
         icon: const Icon(Icons.shopping_cart)
         )
      ],
      backgroundColor: Theme.of(
        context).colorScheme.background,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: const Text("Sunset Diner"),
        flexibleSpace: FlexibleSpaceBar(
          background: Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: child,
          ),
          title: title,
           centerTitle: true,
          titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
           ),

    );
  }
}