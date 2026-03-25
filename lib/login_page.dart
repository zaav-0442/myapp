import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      // AppBar transparente para permitir el regreso a la bienvenida
      appBar: AppBar(
        backgroundColor: Colors.transparent, 
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF27EEF5)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            // Título con el color de acento amarillo
            const Text(
              "INICIAR SESIÓN",
              style: TextStyle(
                color: Color(0xFFF5BE27),
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 50),
            
            // Input de Nombre de Usuario (Estilo Registro)
            _buildTextField(
              icon: Icons.person, 
              hint: "Nombre de Usuario", 
              accentColor: Color(0xFF27EEF5)
            ),
            const SizedBox(height: 20),
            
            // Input de Contraseña (Estilo Registro)
            _buildTextField(
              icon: Icons.lock, 
              hint: "Contraseña", 
              accentColor: Color(0xFF27EEF5), 
              obscure: true
            ),
            
            const SizedBox(height: 50),
            
            // Botón de Ingreso
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF27EEF5),
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                // Simulación de éxito
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Color(0xFF27EEF5),
                    content: Text(
                      "¡Acceso concedido! Bienvenido al turno nocturno.",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    duration: Duration(seconds: 3),
                  ),
                );
              },
              child: const Text(
                "INGRESAR",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget reutilizable para mantener la coherencia con RegisterPage
  Widget _buildTextField({
    required IconData icon, 
    required String hint, 
    required Color accentColor, 
    bool obscure = false
  }) {
    return TextField(
      obscureText: obscure,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: accentColor),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white54),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: accentColor),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.05),
      ),
    );
  }
}