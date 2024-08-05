// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Iconpages extends StatefulWidget {
  const Iconpages({super.key});

  @override
  State<Iconpages> createState() => _IconpagesState();
}

class _IconpagesState extends State<Iconpages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Actions",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(

          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Common Buttons ',
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.info_outline)
              ],
            ),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: commonbutton(name: "Elevated", size: 15)),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: iconudf(size: 25, data: Icons.add),
                        label: commonbutton(name: "Icon", size: 20),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.grey.shade300)),
                        onPressed: () {},
                        child: commonbutton(
                            name: "Elevated",
                            size: 15,
                            color: Color(0xffA7A3A7)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilledButton(
                          onPressed: () {},
                          child: commonbutton(name: "Filled", size: 25)),
                      FilledButton.icon(
                        onPressed: () {},
                        icon: iconudf(size: 25, data: Icons.add),
                        label: commonbutton(name: "Icon", size: 20),
                      ),
                      FilledButton(
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  Colors.grey.shade300)),
                          onPressed: () {},
                          child: commonbutton(
                              name: "Filled", size: 25, color: Colors.grey))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilledButton.tonal(
                          onPressed: () {},
                          child: commonbutton(name: "Filled Tonal", size: 15)),
                      FilledButton.tonalIcon(
                        onPressed: () {},
                        icon: iconudf(size: 25, data: Icons.add),
                        label: commonbutton(name: "Icon", size: 20),
                      ),
                      FilledButton.tonal(
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  Colors.grey.shade300)),
                          onPressed: () {},
                          child: commonbutton(
                              name: "Filled Tonal", size: 15, color: Colors.grey))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                          onPressed: () {},
                          child: commonbutton(name: "Outlined", size: 15)),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: iconudf(size: 25, data: Icons.add),
                        label: commonbutton(name: "Icon", size: 20),
                      ),
                      OutlinedButton(
                          style: ButtonStyle(
                             overlayColor: WidgetStateProperty.all(Colors.grey)),
                          onPressed: () {},
                          child: commonbutton(
                              name: "Outlined", size: 15, color: Colors.grey))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: commonbutton(name: "  Text", size: 15)),
                      SizedBox(width: 10,),TextButton.icon(
                        onPressed: () {},
                        icon: iconudf(size: 25, data: Icons.add),
                        label: commonbutton(name: "Icon", size: 20),
                      ),
                      TextButton(
                          style: ButtonStyle(
                              overlayColor: WidgetStateProperty.all(Colors.grey)),
                          onPressed: () {},
                          child: commonbutton(
                              name: "Text", size: 15, color: Colors.grey))
                    ],
                  ),
                ],
              ),
            ),
            Text(
                'Icon Buttons',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                height: 100,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton.filledTonal(
                      onPressed: () {},
                      icon: const Icon(Icons.settings, color: Colors.black87),
                    ),
                    IconButton.outlined(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart,
                          color: Colors.black87),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.black87,
                      ),
                    ),
                    IconButton.filled(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ],
                  ),

          ],
        ),
      ),
    );
  }

  Icon iconudf({
    required double size,
    required var data,
  }) =>
      Icon(
        Icons.add,
        size: 25,
      );

  Text commonbutton(
      {required String name, required double size, Color? color}) {
    return Text(
      "$name",
      style: TextStyle(fontSize: size, color: color),
    );
  }
}
            
List<dynamic> icons = [
  Icons.person_2_outlined,
  Icons.location_on_outlined,
  Icons.notifications_none_outlined,
  Icons.payment,
  Icons.verified_user_outlined,
  Icons.language,
  Icons.lock_outline,
  Icons.help_center_outlined,
  Icons.supervised_user_circle_outlined,
  Icons.logout,
];

List text = [
  'Edit Profile',
  'Address',
  'Notification',
  'Payment',
  'Security',
  'Language',
  'Privacy Policy',
  'Help Center',
  'Invite Friends',
  'Log Out',
];
