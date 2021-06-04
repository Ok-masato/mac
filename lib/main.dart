// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase初期化
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Test',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[800],
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // primarySwatch:  Colors.grey,
//         primaryColor: Colors.blueGrey[800],
//       ),
//       // home: MyAuthPage(),
//       home: RootPage(),
//       routes: <String,WidgetBuilder>{
//         '/home':(BuildContext context) => HomePage(),
//         '/register':(BuildContext context) => RegisterPage(),
//         '/login':(BuildContext context) => LoginPage(),
//       }
//     );
//   }
// }

// class MyAuthPage extends StatefulWidget {
//   @override
//   _MyAuthPageState createState() => _MyAuthPageState();
// }
//
// class _MyAuthPageState extends State<MyAuthPage> {
//   // 入力されたメールアドレス（ログイン）
//   String loginUserEmail = "";
//   // 入力されたパスワード（ログイン）
//   String loginUserPassword = "";
//   // 登録・ログインに関する情報を表示
//   String infoText = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("トップページ"),
//         actions: <Widget>[
//           ButtonTheme(
//             minWidth: 100,
//             height: 20,
//             child: RaisedButton(
//               child: Text("ログイン"),
//               color: Colors.redAccent,
//               onPressed: () => {
//                 // ボタンを押された時に新規登録画面へ遷移する
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => LoginPage()),
//                 ),
//               },
//             ),
//           )
//         ],
//       ),
//       body: Center(
//           child: Container(
//               padding: EdgeInsets.all(32),
//               child: Column(
//                   children: <Widget>[
//                     Center(
//                       child: Column(
//                         children: <Widget>[
//                           Text("home page"),
//                         ],
//                       ),
//                     ),
//                   ],
//               ),
//           ),
//       ),
//     );
//   }
// }