import 'package:alumnet/src/provider/user_provider.dart';
import 'package:alumnet/src/screens/auth_screen.dart';
import 'package:alumnet/src/screens/event_screen.dart';
import 'package:alumnet/src/screens/feed_screen.dart';
import 'package:alumnet/src/screens/profile_screen.dart';
import 'package:alumnet/src/utils/app_utils.dart';
import 'package:alumnet/src/utils/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => UserProvider()),
        // ChangeNotifierProvider(create: (ctx) => UserProvider()),
      ],
      child: MaterialApp(
        title: appName,
        debugShowCheckedModeBanner: false,
        theme: theme,
        routes: {
          '/feed': (BuildContext context) => FeedScreen(),
          '/auth': (BuildContext context) => AuthScreen(),
          '/profile': (BuildContext context) => ProfileScreen(),
          '/event': (BuildContext context) => EventScreen(),
        },
        initialRoute: "/auth",
      ),
    );
  }
}
