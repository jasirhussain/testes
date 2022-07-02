import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal:20,
          vertical: 50,
        ),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.add),
                ),
                CircleAvatar(
                    backgroundColor: Colors.green, child: Icon(Icons.upload))
              ],

            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
