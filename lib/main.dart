import 'package:flutter/material.dart';
import 'welcome_page.dart';
import 'login_page.dart';
import 'register_page.dart';

void main() {
  runApp(const FazbearApp());
}

class FazbearApp extends StatelessWidget {
  const FazbearApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Freddy Fazbear's Mega Pizzaplex",
      debugShowCheckedModeBanner: false,
      
      // Configuración del tema oscuro global
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        primaryColor: const Color(0xFFF5BE27), // Cyber Yellow
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFF5BE27),
          secondary: Color(0xFF27EEF5), // Electric Blue
          tertiary: Color(0xFFF5276C),  // Viva Magenta
        ),
        // Estilo de texto por defecto para toda la app
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
        ),
      ),

      // Definición de rutas para navegar entre páginas
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}