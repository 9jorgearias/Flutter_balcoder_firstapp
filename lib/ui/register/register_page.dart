import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/utils/validators.dart'; // Importa las validaciones

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscríbete'),
        backgroundColor: const Color.fromRGBO(173, 217, 230, 0.65),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text(
                'Explora temas de bienestar mental y reserva sesiones de forma segura',
                style: TextStyle(fontSize: 18, color: Color(0xFF666F98), fontWeight: FontWeight.w500),
              ),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                ),
                validator: (value) {
                  return validateName(value ?? '');
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  return validateEmail(value ?? '');
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
                validator: (value) {
                  return validatePassword(value ?? '');
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Implementar función de inscripción
                  }
                },
                child: const Text('Inscríbete'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromWidth(200),
                  backgroundColor: const Color(0xFFADD9E6),
                  foregroundColor: const Color(0xFF152361),
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: const Text('¿Ya te has inscrito? Inicia sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
