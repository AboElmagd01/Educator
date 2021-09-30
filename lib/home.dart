
import 'package:flutter/material.dart';
// import 'package:android_intent/android_intent.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
// import 'package:flutter_appavailability/flutter_appavailability.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.black, elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(primary: Colors.black, onPrimary: Colors.grey))),
      home: Scaffold(
        appBar: AppBar(title: Text('EducatAr'), centerTitle: true),
        body: Center(
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        // final AndroidIntent intent = AndroidIntent( package: "com.google.android.youtube",componentName: "com.google.android.youtube.ui.splash.SplashActivity");
                        // intent.launch();
                        await LaunchApp.openApp(
                          androidPackageName: 'com.student.ARChemical',
                            openStore: false
                        );
                        // AppAvailability.launchApp('com.student.ARChemical');
                        //   final AndroidIntent intent = AndroidIntent(
                        //     action: 'action_view',
                        //     data: 'package:com.student.ARChemical',
                        //   );
                        //   await intent.launch();

                      },
                      child: const Text(
                        'Start AR Camera',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      )),
//            const SizedBox(height: 30),
//            ElevatedButton(
//                onPressed: () {},
//               child: Text(
//                 'Start AR Camera',
//                 style: TextStyle(color: Colors.white, fontSize: 16.0),
//               )),
                  const SizedBox(height: 30),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Quiz 1',
                              style: TextStyle(color: Colors.white, fontSize: 16.0),
                            )),
                        const SizedBox(width: 10),
                        ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Quiz 2',
                              style: TextStyle(color: Colors.white, fontSize: 16.0),
                            )),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/table');
                      },
                      child: const Text(
                        'Periodic Table',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      )),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'About Us',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      )),
                ],
              ),
            )),
      ),
    );
  }
}
