import 'package:flutter/material.dart';
import 'login_page.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("REGISTRO", style: TextStyle(color: Color(0xFF27EEF5), fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            _buildTextField(Icons.person, "Nombre de Usuario", Color(0xFFF5BE27)),
            SizedBox(height: 20),
            _buildTextField(Icons.email, "Correo Electrónico", Color(0xFF27EEF5)),
            SizedBox(height: 20),
            _buildTextField(Icons.lock, "Contraseña", Color(0xFFF5276C), obscure: true),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF5276C),
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text("Registrarse", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(IconData icon, String hint, Color accentColor, {bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: accentColor),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white54),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: accentColor)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 2)),
      ),
    );
  }
}