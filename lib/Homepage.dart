import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final AudioCache player = AudioCache();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height),
          Container(
              child: GridView.builder(
                  itemCount: 44,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                    childAspectRatio: (1.3 / 1),
                  ),
                  itemBuilder: (context, index) => Card(
                          child: (MaterialButton(
                        onPressed: () {
                          player.play('music/beat ($index).wav');
                        },
                      )))))
        ],
      ),
    );
  }
}
