
import 'package:flutter/material.dart';

class loginApp extends StatefulWidget {
  const loginApp({super.key});

  @override
  State<loginApp> createState() => _loginAppState();
}

class _loginAppState extends State<loginApp> {
  @override
  // ignore: override_on_non_overriding_member
  bool _obscureText = true;
  // ignore: unused_field
  // bool _cekLogin = false;
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
              child: Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 10),
                child: Image.asset('asset/images/sign/login.png'),
              ),
            ),
            const Text(
              "Login",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email...',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 4, horizontal: 23),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
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
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 4, horizontal: 23),
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
            SizedBox(
              height: 10,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                   Navigator.pushNamed(context, '/home');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF068CB7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Sesuaikan nilai radius sesuai keinginan
                    ), // Sesuaikan dengan nilai warna yang diinginkan
                  ),
                  child: Text('Login')),
            ),
            SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                      height: 20.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'OR',
                      style: TextStyle(fontSize: 20, color: Colors.black38),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                      height: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  // Fungsi yang akan dijalankan saat tombol ditekan
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8.0), // Sesuaikan nilai radius sesuai keinginan
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset('asset/images/sign/google.png'),
                    SizedBox(
                      width: 55,
                    ),
                    Text('Login with Google')
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a mamber?'),
                TextButton(onPressed: (){}, child: Text('Sign Up'))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
