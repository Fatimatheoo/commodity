import 'package:commodity/provider/SigninProvider.dart';
import 'package:commodity/provider/UserProvider.dart';
import 'package:commodity/provider/navbarprovider.dart';
import 'package:commodity/provider/registerprovider.dart';
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
        ChangeNotifierProvider(create: (_)=> Navbarprovider()),
        ChangeNotifierProvider(create: (_)=> SigninProvider() ),
        ChangeNotifierProvider(create: (_)=> SignUpProvider()),
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