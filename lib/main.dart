import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:soundpool/soundpool.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   AudioPlayer audioPlayer = AudioPlayer();
  AudioPlayer audioPlayer2 = AudioPlayer();
  AudioPlayer audioPlayer3 = AudioPlayer();
  AudioPlayer audioPlayer4 = AudioPlayer();
  AudioPlayer audioPlayer5 = AudioPlayer();
  AudioPlayer audioPlayer6 = AudioPlayer();
  AudioPlayer audioPlayer7 = AudioPlayer();

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

    });
  }


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();



  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.red;
                      return null; // Defer to the widget's default.
                    }
                ),
              ),
              onPressed: () async {

                int result = await audioPlayer.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
                if (result == 1) {
                  // success
                }

                // Soundpool pool = Soundpool(streamType: StreamType.ring);
                //
                // int soundId = await rootBundle.load("sound_resources/sample2.m4a").then((ByteData soundData) {
                //   return pool.load(soundData);
                // });
                // int streamId = await pool.play(soundId);


              },
              child: Text('SOUND 1'),
            ),
            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.red;
                      return null; // Defer to the widget's default.
                    }
                ),
              ),
              onPressed: () async {

                int result = await audioPlayer.pause();
                if (result == 1) {
                  // success
                }

                // Soundpool pool = Soundpool(streamType: StreamType.ring);
                //
                // int soundId = await rootBundle.load("sound_resources/sample2.m4a").then((ByteData soundData) {
                //   return pool.load(soundData);
                // });
                // int streamId = await pool.play(soundId);


              },
              child: Text('SOUND 1 PAUSE'),
            ),
            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.red;
                      return null; // Defer to the widget's default.
                    }
                ),
              ),
              onPressed: () async {
                // Soundpool pool = Soundpool(streamType: StreamType.ring);
                //
                // int soundId = await rootBundle.load("sound_resources/sample3.m4a").then((ByteData soundData) {
                //   return pool.load(soundData);
                // });
                // int streamId = await pool.play(soundId);
                int result = await audioPlayer2.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3');
                if (result == 1) {
                  // success
                }

              },
              child: Text('SOUND 2'),
            ),
            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.red;
                      return null; // Defer to the widget's default.
                    }
                ),
              ),
              onPressed: () async {
                // Soundpool pool = Soundpool(streamType: StreamType.ring);
                //
                // int soundId = await rootBundle.load("sound_resources/sample3.m4a").then((ByteData soundData) {
                //   return pool.load(soundData);
                // });
                // int streamId = await pool.play(soundId);
                int result = await audioPlayer3.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3');
                if (result == 1) {
                  // success
                }

              },
              child: Text('SOUND 3'),
            ),
            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.red;
                      return null; // Defer to the widget's default.
                    }
                ),
              ),
              onPressed: () async {
                // Soundpool pool = Soundpool(streamType: StreamType.ring);
                //
                // int soundId = await rootBundle.load("sound_resources/sample3.m4a").then((ByteData soundData) {
                //   return pool.load(soundData);
                // });
                // int streamId = await pool.play(soundId);
                int result = await audioPlayer3.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3');
                if (result == 1) {
                  // success
                }

              },
              child: Text('SOUND 4'),
            ),
            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.red;
                      return null; // Defer to the widget's default.
                    }
                ),
              ),
              onPressed: () async {
                // Soundpool pool = Soundpool(streamType: StreamType.ring);
                //
                // int soundId = await rootBundle.load("sound_resources/sample3.m4a").then((ByteData soundData) {
                //   return pool.load(soundData);
                // });
                // int streamId = await pool.play(soundId);
                int result = await audioPlayer3.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3');
                if (result == 1) {
                  // success
                }

              },
              child: Text('SOUND 5'),
            ),
            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.red;
                      return null; // Defer to the widget's default.
                    }
                ),
              ),
              onPressed: () async {
                // Soundpool pool = Soundpool(streamType: StreamType.ring);
                //
                // int soundId = await rootBundle.load("sound_resources/sample3.m4a").then((ByteData soundData) {
                //   return pool.load(soundData);
                // });
                // int streamId = await pool.play(soundId);
                int result = await audioPlayer3.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-6.mp3');
                if (result == 1) {
                  // success
                }

              },
              child: Text('SOUND 6'),
            ),
            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.red;
                      return null; // Defer to the widget's default.
                    }
                ),
              ),
              onPressed: () async {
                int result = await audioPlayer3.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-7.mp3');
                if (result == 1) {
                  // success
                }

              },
              child: Text('SOUND 7'),
            ),
            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.red;
                      return null; // Defer to the widget's default.
                    }
                ),
              ),
              onPressed: () async {

                await audioPlayer.setUrl('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
                await audioPlayer2.setUrl('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
                await audioPlayer3.setUrl('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');

                await audioPlayer.seek(Duration(milliseconds: 400));
                await audioPlayer2.seek(Duration(milliseconds: 400));
                await audioPlayer3.seek(Duration(milliseconds: 400));

                await audioPlayer.resume();
                await audioPlayer2.resume();
                await audioPlayer3.resume();

              },
              child: Text('ALL'),
            ),

            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.red;
                      return null; // Defer to the widget's default.
                    }
                ),
              ),
              onPressed: () async {

                await audioPlayer.pause();
                await audioPlayer2.pause();
                await audioPlayer3.pause();

              },
              child: Text('ALL PAUSE'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
