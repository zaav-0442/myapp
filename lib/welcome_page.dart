import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212), // Fondo oscuro
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to Freddy Fazbear's, where fantasy meets fun!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFF5BE27),
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Courier', // Estilo retro
              ),
            ),
            SizedBox(height: 60),
            Image.network(
              'https://raw.githubusercontent.com/zaav-0442/U2Act6_LoginFirebase/refs/heads/main/Mega_Pizzaplex_logo_no_bg_%2528credit_to_Under_Score%2529.webp',
              height: 250,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF27EEF5),
                foregroundColor: Colors.black,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage())),
              child: Text("Iniciar sesión", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            TextButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage())),
              child: Text(
                "¿No tienes una cuenta? Crea una >",
                style: TextStyle(color: Color(0xFFF5276C)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}