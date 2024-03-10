import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/chat_page.dart';
import 'package:flutter_chat/pages/login_page.dart';
import 'package:flutter_chat/util/color_util.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      initialLocation: "/",
      routes: [
        GoRoute(
          path: "/",
          builder: (_, state) {
            return LoginPage(
              title: 'Login',
            );
          },
          routes: [
            GoRoute(
              path: "chat",
              builder: (_, state) => ChatPage(
                title: 'Chat',
              ),
            )
          ],
        ),
      ],
    );
    return MaterialApp.router(
      title: 'Flutter Chat',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorUtil.primaryColor,
          primary: ColorUtil.primaryColor,
        ),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
