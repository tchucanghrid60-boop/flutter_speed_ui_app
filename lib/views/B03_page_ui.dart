import 'package:flutter/material.dart';
import 'B02_page_ui.dart';

class B03PageUI extends StatefulWidget {
  const B03PageUI({super.key});

  @override
  State<B03PageUI> createState() => _B03PageUIState();
}

class _B03PageUIState extends State<B03PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 8),
                const Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E5BA8),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Create an account so you can explore all the existing jobs',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Color(0xFF666666)),
                ),
                const SizedBox(height: 50),

                // Email
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
                const SizedBox(height: 50),

                // Password
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
                const SizedBox(height: 50),

                // Confirm Password
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
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
                const SizedBox(height: 50),

                // Sign up button
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Signed up (demo)'),
                            backgroundColor: Color(0xFF1E5BA8)),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E5BA8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text('Sign up',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                ),

                const SizedBox(height: 50),
                GestureDetector(
                  onTap: () {
                    // Already have an account -> go to B02
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const B02PageUI()),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text('Already have an account',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xFF333333))),
                  ),
                ),

                const SizedBox(height: 50),
                const Center(
                    child: Text('Or continue with',
                        style: TextStyle(color: Color(0xFF999999)))),
                const SizedBox(height: 50),
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
                const SizedBox(height: 150),
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
          borderRadius: BorderRadius.circular(12)),
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
