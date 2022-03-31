import 'package:chatapp/screen/chat_screen.dart';
import 'package:chatapp/screen/login_screen.dart';
import 'package:chatapp/screen/register_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/screen/welcome_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context)
        => WelcomeScreen(),
        RegisterScreen.id: (context)
        => RegisterScreen(),
        LoginScreen.id: (context)
        => LoginScreen(),
        ChatScreen.id: (context)
        => ChatScreen()
      },
    );
  }
}
