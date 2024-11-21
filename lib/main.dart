import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meroapp/di.dart';
import 'package:meroapp/firebase_options.dart';
import 'package:meroapp/src/core/routes/app_router.dart';
import 'package:meroapp/src/core/routes/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencies();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.initial,
      onGenerateRoute: AppRouter.routes,
    );
  }
}
