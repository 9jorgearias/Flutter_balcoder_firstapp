import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/utils/validators.dart'; // Importa las validaciones

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar sesión con mi cuenta'),
        backgroundColor: const Color.fromRGBO(173, 217, 230, 0.65),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
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
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Implementar función de olvido de contraseña
                  },
                  child: const Text('¿Olvidaste tu contraseña?'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Implementar función de iniciar sesión
                  }
                },
                child: const Text('Iniciar sesión'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromWidth(200),
                  backgroundColor: const Color(0xFFADD9E6),
                  foregroundColor: const Color(0xFF152361),
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/register');
                },
                child: const Text('¿No tienes una cuenta? Inscribirse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
