// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';


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
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DrawerHeader(child:CircleAvatar(radius:50,backgroundImage: AssetImage('assets/image/1.png'),)),

            ...List.generate(iconlist.length, (indxe)=>drawer(name: iconlist[indxe]['name'], data:iconlist[indxe]['icon'])),
            SizedBox(height: 20,),

           ]
        ),
      ),
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
                              name: "Filled Tonal",
                              size: 15,
                              color: Colors.grey))
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
                              overlayColor:
                                  WidgetStateProperty.all(Colors.grey)),
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
                      SizedBox(
                        width: 10,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: iconudf(size: 25, data: Icons.add),
                        label: commonbutton(name: "Icon", size: 20),
                      ),
                      TextButton(
                          style: ButtonStyle(
                              overlayColor:
                                  WidgetStateProperty.all(Colors.grey)),
                          onPressed: () {},
                          child: commonbutton(
                              name: "Text", size: 15, color: Colors.grey))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Floating Button',
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.info_outline)
              ],
            ),
            Container(
              height: 150,
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
                  FloatingActionButton.small(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton.extended(
                    label: commonbutton(name: "create", size: 25),
                    icon: iconudf(size: 15, data: Icons.add),
                    onPressed: () {},
                  ),
                  FloatingActionButton.large(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Icon Buttons ',
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.info_outline)
              ],
            ),
            Container(
              height: 140,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                        ),
                      ),
                      IconButton.filledTonal(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.grey.shade300)),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                        ),
                      ),
                      IconButton.filled(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.grey.shade300)),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.black38,
                        ),
                      ),
                      IconButton.outlined(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton.filledTonal(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.grey.shade300)),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton.filled(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.grey.shade300)),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.black38,
                        ),
                      ),
                      IconButton.outlined(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Colors.grey.shade300,
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row drawer({required String name,required var data}) {
    return Row(
            children: [
              SizedBox(width: 10,),
              Icon(data,size: 35,color: Colors.grey,),
              SizedBox(width: 20,),
              Text("$name",style:TextStyle(fontSize: 23,fontWeight: FontWeight.w500),)
            ],
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

List iconlist = [
  {'name': 'interest', 'icon': Icons.article},
  {'name': 'My Course ', 'icon': Icons.video_settings},
  {'name': 'Todo/Done', 'icon': Icons.trending_up},
  {'name': 'Offline Articles', 'icon': Icons.download},
  {'name': 'Rate us', 'icon': Icons.star},
  {'name': 'Support ', 'icon': Icons.support_agent},
  {'name': 'Setting', 'icon': Icons.settings},
  {
    'name': 'Log out',
    'icon': Icons.logout,
  }
];
