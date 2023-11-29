import 'package:commodity/provider/UserProvider.dart';
import 'package:commodity/provider/navbarprovider.dart';
import 'package:commodity/views/info/controller/info_controller.dart';
import 'package:commodity/views/login/controller/logincontroller.dart';
import 'package:commodity/views/register/controller/register_controller.dart';
import 'package:commodity/views/reset/controller/resetcontroller.dart';
import 'package:commodity/views/splash/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> Info()),
        ChangeNotifierProvider(create: (_)=> Navbarprovider()),
        ChangeNotifierProvider(create: (_)=> Reset()),
        ChangeNotifierProvider(create: (_)=> Login()),
        ChangeNotifierProvider(create: (_)=> Register()),
        ChangeNotifierProvider(create: (_)=> UserProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}