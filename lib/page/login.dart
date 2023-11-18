import 'package:flutter/material.dart';

class loginApp extends StatefulWidget {
  const loginApp({super.key});

  @override
  State<loginApp> createState() => _loginAppState();
}

class _loginAppState extends State<loginApp> {
  @override
  bool _obscureText = true;
  bool _cekLogin = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset('asset/images/sign/login.png'),
            ),
            Text("Login", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            SizedBox(height: 30),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email...',
                border: OutlineInputBorder(),
                // prefixIcon: Icon(Icons.mail),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordController,
              obscureText:
                  _obscureText, // Ini mengatur apakah teks tersembunyi atau tidak
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                // prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText; // Toggle visibilitas teks
                    });
                  },
                ),
              ),
              // Lainnya: controller, validator, onChanged, dsb.
            ),
          ],
        ),
      ),
    ));
  }
}
