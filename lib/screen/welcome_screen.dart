import 'package:chatapp/screen/login_screen.dart';
import 'package:chatapp/screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/screen/welcome_screen.dart';

// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 32),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Row(
//               children: [
//                 Container(
//                   child: Image.asset('images/chat.png'),
//                   height: 60,
//                   margin: EdgeInsets.only(right: MediaQuery.of(context).size.height * 0.1),
//                 ),
//                 Text('Chat App',
//                 style: TextStyle(fontSize: 45,fontWeight: FontWeight.w900),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 16),
//               child: Material(
//                 elevation: 5,
//                 color: Colors.lightBlueAccent,
//                 borderRadius: BorderRadius.circular(30),
//                 child: MaterialButton(
//                   onPressed: () {
//                     //Otw Login Screen
//                   },
//                   minWidth: 200,
//                   height: 42,
//                   child: Text('Login'
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(),
//               child: Material(
//                 color: Colors.blueAccent,
//                 borderRadius: BorderRadius.circular(30),
//                 elevation: 5,
//                 child: MaterialButton(
//                   onPressed: (){
//                     //Otw Register Screen
//                   },
//                   minWidth: 200,
//                   height: 42,
//                   child: Text('Register'
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class WelcomeScreen extends StatefulWidget {
  static const String id = "WELCOME_SCREEN";

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png', height: 120),
                  ),
                ),
                Text(
                  'Chat App',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 48),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Material(
                elevation: 5,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  minWidth: 200,
                  height: 42,
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.id);
                  },
                  minWidth: 200,
                  height: 42,
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
