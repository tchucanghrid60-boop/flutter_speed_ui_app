import 'package:flutter/material.dart';
import 'B03_page_ui.dart';

class B02PageUI extends StatefulWidget {
  const B02PageUI({super.key});

  @override
  State<B02PageUI> createState() => _B02PageUIState();
}

class _B02PageUIState extends State<B02PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Login here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E5BA8),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Welcome back you've been missed!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF666666),
                  ),
                ),
                const SizedBox(height: 30),

                // Email field
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                    fillColor: const Color(0xFFF5F7FB),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: const Color(0xFF1E5BA8)),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 18),
                  ),
                ),
                const SizedBox(height: 16),

                // Password field
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: const Color(0xFFF5F7FB),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 18),
                  ),
                ),
                const SizedBox(height: 8),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot your password?',
                      style: TextStyle(color: Color(0xFF1E5BA8)),
                    ),
                  ),
                ),

                const SizedBox(height: 12),
                // Sign in button
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E5BA8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    child: const Text('Sign in',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ),

                const SizedBox(height: 20),
                Center(
                    child: TextButton(
                        onPressed: () {
                          // Navigate to register (B03)
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const B03PageUI()),
                          );
                        },
                        child: const Text('Create new account',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0))))),

                const SizedBox(height: 20),
                const Center(
                    child: Text('Or continue with',
                        style: TextStyle(color: Color(0xFF999999)))),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _socialButton('assets/images/Group 19.png'),
                    const SizedBox(width: 12),
                    _socialButton('assets/images/Group 20.png'),
                    const SizedBox(width: 12),
                    _socialButton('assets/images/ci_apple.png'),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialButton(String asset) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F7FB),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Image.asset(asset,
            width: 22,
            height: 22,
            errorBuilder: (c, e, s) =>
                const Icon(Icons.public, color: Color(0xFF1E5BA8))),
      ),
    );
  }
}
