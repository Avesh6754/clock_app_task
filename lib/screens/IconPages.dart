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
              child: Row(
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Elevated",
                            style: TextStyle(fontSize: 15),
                          )),
                      FilledButton(
                        onPressed: () {},
                        child: Text(
                          "Filled",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      FilledButton.tonal(
                        onPressed: () {},
                        child: Text(
                          'Filled Tonal',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Outlined',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Text",
                            style: TextStyle(fontSize: 20),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
