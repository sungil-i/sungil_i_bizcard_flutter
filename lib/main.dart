import 'package:flutter/material.dart';
import 'package:sungil_i_bizcard_flutter/screens/screen_home.dart';

/*void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => App(),
      ),
    );*/

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              side: BorderSide(color: Colors.grey),
            ),
            // elevation: 10.0,
            margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: HomeScreen(),
            ),
          ),
        ),
      ),
    );
  }
}
